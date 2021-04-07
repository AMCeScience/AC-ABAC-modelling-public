/*
 * Copyright (C) 2017-2021 Institute of Communication and Computer Systems (imu.iccs.gr)
 *
 * This Source Code Form is subject to the terms of the Mozilla Public License, v2.0.
 * If a copy of the MPL was not distributed with this file, You can obtain one at
 * https://www.mozilla.org/en-US/MPL/2.0/
 */

package eu.asclepios.example.contexthandlers;

import eu.asclepios.authorization.abac.server.pdp.finder.BaseAttributeFinderModule;
import eu.asclepios.example.contexthandlers.db.EmergencyCallEntity;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;
import org.wso2.balana.cond.EvaluationResult;
import org.wso2.balana.ctx.EvaluationCtx;
import org.wso2.balana.utils.Constants.PolicyConstants;

import java.net.URI;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

@Slf4j
@Component
@ComponentScan
public class CustomDbAttributeFinder extends BaseAttributeFinderModule {
    private final static String DEFAULT_CATEGORY = "urn:eu:asclepios-project:casm:1.0";
    private final static URI HTTP_URL_ATTRIBUTE_URI = URI.create("http-req-url");
    private final static URI STRING_TYPE_URI = URI.create(PolicyConstants.DataType.STRING);
    private final static URI DATETIME_TYPE_URI = URI.create(PolicyConstants.DataType.DATE_TIME);
    private final static URI ENV_CATEGORY_URI = URI.create(PolicyConstants.ENVIRONMENT_CATEGORY_URI);

    private final static String MEDICAL_ROLES_ATTRIBUTE = "medical-roles";
    private final static URI KC_MEDICAL_ROLES_ATTRIBUTE_URI = URI.create("kc-cc--"+MEDICAL_ROLES_ATTRIBUTE);

    private final static String AMBULANCE_CREW_ID_ATTRIBUTE = "ambulance-crew-id";
    private final static URI KC_AMBULANCE_CREW_ID_ATTRIBUTE_URI = URI.create("kc-cc--"+AMBULANCE_CREW_ID_ATTRIBUTE);

    private final static String CALL_EXPIRATION_ATTRIBUTE = "call-expiration-datetime";
    private final static String CREW_ID_ATTRIBUTE = "ambulance-crew-id";
    private final static String CREW_ID_ASSIGNED_TO_CALL_ATTRIBUTE = "ambulance-crew-id-assigned-to-call";

    private final Connection dbConnection;
    private final Statement dbStatement;
    private final SimpleDateFormat simpleDateFormat;

    @Override
    public boolean isDesignatorSupported() { return true; }

    public CustomDbAttributeFinder() throws ClassNotFoundException, SQLException {
        // Setup Database connection
        String dbDriver = System.getenv("CUSTOM_DB_FINDER_DB_DRIVER");
        String dbUrl = System.getenv("CUSTOM_DB_FINDER_DB_URL");
        String dbUsername = System.getenv("CUSTOM_DB_FINDER_DB_USERNAME");
        String dbPassword = System.getenv("CUSTOM_DB_FINDER_DB_PASSWORD");
        log.info("CustomDbAttributeFinder: DB settings: url={}, driver={}, username={}", dbUrl, dbDriver, dbUsername);

        Class.forName(dbDriver);
        dbConnection = DriverManager
                .getConnection(dbUrl, dbUsername, dbPassword);
        dbStatement = dbConnection.createStatement();
        dbStatement.executeUpdate("DROP TABLE IF EXISTS EMERGENCY_CALLS");
        dbStatement.executeUpdate("CREATE TABLE IF NOT EXISTS EMERGENCY_CALLS (ID VARCHAR(50), EXPIRATION_DATETIME DATETIME, ASSIGNED_AMBULANCE_CREW_ID VARCHAR(50))");

        // Add example emergency call entries in Database
        simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String[] callEntries = System.getenv("CUSTOM_DB_FINDER_CALL_ENTRIES").split(",");
        int cnt = 0;
        for (String entry : callEntries) {
            log.info("CustomDbAttributeFinder: Processing entry: {}", entry);
            String[] part = entry.split(":");
            if (StringUtils.isNotBlank(part[0])) {
                String callId = part[0].trim();
                long expireOffset = StringUtils.isNotBlank(part[1]) ? Long.parseLong(part[1]) : 600*1000; // Expires in 10 minutes
                String expirationStr = simpleDateFormat.format(new Date(System.currentTimeMillis()+expireOffset));
                String crewId = StringUtils.isNotBlank(part[2]) ? part[2].trim() : "ambulance-crew-id-1234";
                dbStatement.executeUpdate(String.format(
                        "INSERT INTO EMERGENCY_CALLS (ID, EXPIRATION_DATETIME, ASSIGNED_AMBULANCE_CREW_ID) VALUES ('%s', '%s', '%s')",
                        callId, expirationStr, crewId));
                cnt++;
            }
        }
        log.info("CustomDbAttributeFinder: Added {} entries in DB", cnt);
    }

    @Override
    public EvaluationResult findAttribute(URI attributeType, URI attributeId,
                                          String issuer, URI category, EvaluationCtx context)
    {
        if (attributeMatches(
                PolicyConstants.STRING_DATA_TYPE, attributeType,
                MEDICAL_ROLES_ATTRIBUTE, attributeId,
                DEFAULT_CATEGORY, category))
        {
            // Get user roles
            String[] roles = getUserMedicalRoles(issuer, context);
            log.warn("--------    Found Medical Roles: {}", roles!=null?Arrays.asList(roles):null);
            if (roles==null || roles.length == 0) {
                return createEmptyResult(STRING_TYPE_URI);
            }

            return createStringResult(category, attributeType, attributeId, context, roles);
        }

        if (attributeMatches(
                PolicyConstants.DataType.DATE_TIME, attributeType,
                CALL_EXPIRATION_ATTRIBUTE, attributeId,
                DEFAULT_CATEGORY, category))
        {
            // Get call expiration date-time
            Date expiration = getCallEntity(issuer, context).getExpirationDateTime();
            log.debug("--------    Found Call Expiration: {}", expiration);
            if (expiration==null) {
                return createEmptyResult(DATETIME_TYPE_URI);
            }

            return createDateTimeResult(category, attributeType, attributeId, expiration, context);
        }

        if (attributeMatches(
                PolicyConstants.STRING_DATA_TYPE, attributeType,
                CREW_ID_ATTRIBUTE, attributeId,
                DEFAULT_CATEGORY, category))
        {
            // Get crew id
            String crewId = getUserAmbulanceCrewId(issuer, context);
            log.warn("--------    Found Ambulance Crew Id: {}", crewId);
            if (StringUtils.isBlank(crewId)) {
                return createEmptyResult(STRING_TYPE_URI);
            }

            return createStringResult(category, attributeType, attributeId, crewId, context);
        }

        if (attributeMatches(
                PolicyConstants.STRING_DATA_TYPE, attributeType,
                CREW_ID_ASSIGNED_TO_CALL_ATTRIBUTE, attributeId,
                DEFAULT_CATEGORY, category))
        {
            // Get crew id assigned to call
            String crewId = getCallEntity(issuer, context).getAssignedAmbulanceCrewId();
            log.debug("--------    Found Assigned-Crew-Id: {}", crewId);
            if (StringUtils.isBlank(crewId)) {
                return createEmptyStringResult();
            }

            return createStringResult(category, attributeType, attributeId, crewId, context);
        }

        return createEmptyResult(attributeType);
    }

    // =========================================================================================

    private String getKeycloakCustomClaim(URI customClaimUri, String issuer, EvaluationCtx context) {
        log.warn("--------    getKeycloakCustomClaim: Searching for '{}' Keycloak Custom Claim...", customClaimUri);
        String valueStr = findStringAttribute(STRING_TYPE_URI, customClaimUri, issuer, ENV_CATEGORY_URI, context);
        if (StringUtils.isBlank(valueStr)) {
            log.warn("--------    getKeycloakCustomClaim: Not found '{}' in Keycloak Custom Claims", customClaimUri);
            return null;
        }
        log.warn("--------    getKeycloakCustomClaim: Found '{}' Keycloak Custom Claim: {}", customClaimUri, valueStr);
        return valueStr;
    }

    private String[] getUserMedicalRoles(String issuer, EvaluationCtx context) {
        // Get user attribute 'medical-roles' from Keycloak data provided in XACML request
        String medicalRolesStr = getKeycloakCustomClaim(KC_MEDICAL_ROLES_ATTRIBUTE_URI, issuer, context);
        if (StringUtils.isBlank(medicalRolesStr)) return null;

        String[] r = Arrays.stream(medicalRolesStr.split(","))
                .filter(StringUtils::isNotBlank).map(String::trim).toArray(String[]::new);
        log.warn("--------    getUserMedicalRoles: medical-roles: {}", Arrays.asList(r));
        return r;
    }

    private String getUserAmbulanceCrewId(String issuer, EvaluationCtx context) {
        // Get user attribute 'ambulance-crew-id' from Keycloak data provided in XACML request
        String ambulanceCrewIdStr = getKeycloakCustomClaim(KC_AMBULANCE_CREW_ID_ATTRIBUTE_URI, issuer, context);
        if (StringUtils.isBlank(ambulanceCrewIdStr)) return null;

        log.warn("--------    getUserAmbulanceCrewId: return: {}", ambulanceCrewIdStr);
        return ambulanceCrewIdStr.trim();
    }

    // =========================================================================================

    private String getCallId(String issuer, EvaluationCtx context) {
        String requestUrl = findStringAttribute(STRING_TYPE_URI, HTTP_URL_ATTRIBUTE_URI, issuer, ENV_CATEGORY_URI, context);
        return StringUtils.substringAfter(requestUrl, "/call/");
    }

    @SneakyThrows
    private EmergencyCallEntity getCallEntity(String issuer, EvaluationCtx context) {
        String callId = getCallId(issuer, context);

        ResultSet rs = dbStatement
                .executeQuery(String.format("SELECT * FROM EMERGENCY_CALLS WHERE ID='%s'", callId));
        EmergencyCallEntity entity = new EmergencyCallEntity();
        if (rs.next()) {
            entity.setId(rs.getString("id"));
            entity.setExpirationDateTime(simpleDateFormat.parse(rs.getString("expiration_datetime")));
            entity.setAssignedAmbulanceCrewId(rs.getString("assigned_ambulance_crew_id"));
        }

        log.warn("EmergencyCallEntity: id={} -> {}", callId, entity);
        return entity;
    }
}