/*
 * Copyright (C) 2017-2021 
 Institute of Communication and Computer Systems (imu.iccs.gr)
 Department of Epidemiology and Data Science (https://www.ebioscience.amc.nl), 
 Amsterdam University Medical Centers - University of Amsterdam, Amsterdam, Netherlands
 *
 * This Source Code Form is subject to the terms of the Mozilla Public License, v2.0.
 * If a copy of the MPL was not distributed with this file, You can obtain one at
 * https://www.mozilla.org/en-US/MPL/2.0/
 */

package eu.asclepios.example.contexthandlers;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import eu.asclepios.authorization.abac.server.pdp.finder.BaseAttributeFinderModule;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.wso2.balana.cond.EvaluationResult;
import org.wso2.balana.ctx.EvaluationCtx;
import org.wso2.balana.utils.Constants.PolicyConstants;

import java.net.URI;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.Map;

@Slf4j
@Component
@ComponentScan
public class CustomRestAttrFinder extends BaseAttributeFinderModule {
    // Data Type URIs
    private final static String DEFAULT_CATEGORY = PolicyConstants.ENVIRONMENT_CATEGORY_URI;
    private final static String SND_CATEGORY = "urn:eu:asclepios-project:casm:1.0";
    private final static URI STRING_TYPE_URI = URI.create(PolicyConstants.DataType.STRING);
    private final static URI DATETIME_TYPE_URI = URI.create(PolicyConstants.DataType.DATE_TIME);
    private final static URI ENV_CATEGORY_URI = URI.create(PolicyConstants.ENVIRONMENT_CATEGORY_URI);

    // Input Data URIs
    private final static URI PATIENT_ID_ATTRIBUTE_URI = URI.create("http-param-patient-id");
    private final static URI ES_ID_ATTRIBUTE_URI = URI.create("http-param-es-id");
    private final static URI KC_USER_ID_ATTRIBUTE_URI = URI.create("kc-cc--user-ID");
    private final static URI KC_TEAM_ID_ATTRIBUTE_URI = URI.create("kc-cc--team-ID");

    // Requested Data URIs
    private final static String TIMESTAMP_SHIFT_START_ATTRIBUTE = "timestamp-shift-start";
    private final static String TIMESTAMP_SHIFT_END_ATTRIBUTE = "timestamp-shift-end";
    private final static String TIMESTAMP_TREAT_ATTRIBUTE = "timestamp-treat";
    private final static String TIMESTAMP_INVITE_ATTRIBUTE = "timestamp-invite";
    private final static String TIMESTAMP_REVOKE_ATTRIBUTE = "timestamp-revoke";
    private final static String TIMESTAMP_REVOKE_EXTRA_ATTRIBUTE = "timestamp-revoke-extra";
    private final static String TEAM_ID_ATTRIBUTE = "team-id";
    private final static String UNDER_EMERGENCY_ATTRIBUTE = "under-emergency";
    private final static String ACTIVE_EMERGENCY_TEAM_ID_ATTRIBUTE = "active-emergency-team-id";
    private final static String EMERGENCY_ACTIVE_ATTRIBUTE = "emergency-active";
    private final static String STARTER_ID_ATTRIBUTE = "starter-id";
    private final static String USER_ID_ATTRIBUTE = "user-id";
    private final static String TEAM_TAG_ATTRIBUTE = "team-tag";    


    // Misc. variables
    private final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSS");
    private final RestTemplate restTemplate = new RestTemplate();
    private final String restUrlTempl;
    private final Gson gson;

    @Override
    public boolean isDesignatorSupported() { return true; }

    public CustomRestAttrFinder() {
        restUrlTempl = System.getenv("CUSTOM_REST_FINDER_REST_URL");
        if (StringUtils.isBlank(restUrlTempl))
            throw new IllegalArgumentException("CUSTOM_REST_FINDER_REST_URL enviroment variable is not set");
        log.info("CustomRestAttrFinder: REST URL template: {}", restUrlTempl);
        gson = new GsonBuilder().create();
    }

    @SneakyThrows
    @Override
    public EvaluationResult findAttribute(URI attributeType, URI attributeId,
                                          String issuer, URI category, EvaluationCtx context)
    {
        log.debug("--------    findAttribute: ATTRIBUTE: id={}, type={}, category={}", attributeId, attributeType, category);

        // Check if attribute is 'timestamp-shift-start'
        if (attributeMatches(
                PolicyConstants.DataType.DATE_TIME, attributeType,
                TIMESTAMP_SHIFT_START_ATTRIBUTE, attributeId,
                DEFAULT_CATEGORY, category))
        {
            log.debug("--------    Looking for TIMESTAMP_SHIFT_START_ATTRIBUTE");
            Map map = callRestProvider(issuer, context);
            Object valueObj = map.get("timestamp_shift_start");
            log.debug("--------    Value for TIMESTAMP_SHIFT_START_ATTRIBUTE: {}", valueObj);
            if (valueObj!=null) {
                String value = valueObj.toString();
                Date dt = simpleDateFormat.parse(value);
                log.debug("--------    TIMESTAMP_SHIFT_START_ATTRIBUTE: date/time={}", dt);
                return createDateTimeResult(dt);
            }
            return createEmptyDateTimeResult();
        }

        // Check if attribute is 'timestamp-shift-end'
        if (attributeMatches(
                PolicyConstants.DataType.DATE_TIME, attributeType,
                TIMESTAMP_SHIFT_END_ATTRIBUTE, attributeId,
                DEFAULT_CATEGORY, category))
        {
            log.debug("--------    Looking for TIMESTAMP_SHIFT_END_ATTRIBUTE");
            Map map = callRestProvider(issuer, context);
            Object valueObj = map.get("timestamp_shift_end");
            log.debug("--------    Value for TIMESTAMP_SHIFT_END_ATTRIBUTE: {}", valueObj);
            if (valueObj!=null) {
                String value = valueObj.toString();
                Date dt = simpleDateFormat.parse(value);
                log.debug("--------    TIMESTAMP_SHIFT_END_ATTRIBUTE: date/time={}", dt);
                return createDateTimeResult(dt);
            }
            return createEmptyDateTimeResult();
        }

        // Check if attribute is 'timestamp-treat'
        if (attributeMatches(
                PolicyConstants.DataType.DATE_TIME, attributeType,
                TIMESTAMP_TREAT_ATTRIBUTE, attributeId,
                DEFAULT_CATEGORY, category))
        {
            log.debug("--------    Looking for TIMESTAMP_TREAT_ATTRIBUTE");
            Map map = callRestProvider(issuer, context);
            Object valueObj = map.get("timestamp_treat");
            log.debug("--------    Value for TIMESTAMP_TREAT_ATTRIBUTE: {}", valueObj);
            if (valueObj!=null) {
                String value = valueObj.toString();
                Date dt = simpleDateFormat.parse(value);
                log.debug("--------    TIMESTAMP_TREAT_ATTRIBUTE: date/time={}", dt);
                return createDateTimeResult(dt);
            }
            return createEmptyDateTimeResult();
        }

        // Check if attribute is 'timestamp-invite'
        if (attributeMatches(
                PolicyConstants.DataType.DATE_TIME, attributeType,
                TIMESTAMP_INVITE_ATTRIBUTE, attributeId,
                DEFAULT_CATEGORY, category))
        {
            log.debug("--------    Looking for TIMESTAMP_INVITE_ATTRIBUTE");
            Map map = callRestProvider(issuer, context);
            Object valueObj = map.get("timestamp_invite");
            log.debug("--------    Value for TIMESTAMP_INVITE_ATTRIBUTE: {}", valueObj);
            if (valueObj!=null) {
                String value = valueObj.toString();
                Date dt = simpleDateFormat.parse(value);
                log.debug("--------    TIMESTAMP_INVITE_ATTRIBUTE: date/time={}", dt);
                return createDateTimeResult(dt);
            }
            return createEmptyDateTimeResult();
        }

        // Check if attribute is 'timestamp-revoke'
        if (attributeMatches(
                PolicyConstants.DataType.DATE_TIME, attributeType,
                TIMESTAMP_REVOKE_ATTRIBUTE, attributeId,
                DEFAULT_CATEGORY, category))
        {
            log.debug("--------    Looking for TIMESTAMP_REVOKE_ATTRIBUTE");
            Map map = callRestProvider(issuer, context);
            Object valueObj = map.get("timestamp_revoke");
            log.debug("--------    Value for TIMESTAMP_REVOKE_ATTRIBUTE: {}", valueObj);
            if (valueObj!=null) {
                String value = valueObj.toString();
                Date dt = simpleDateFormat.parse(value);
                log.debug("--------    TIMESTAMP_REVOKE_ATTRIBUTE: date/time={}", dt);
                return createDateTimeResult(dt);
            }
            return createEmptyDateTimeResult();
        }

        // Check if attribute is 'timestamp-revoke-extra'
        if (attributeMatches(
                PolicyConstants.DataType.DATE_TIME, attributeType,
                TIMESTAMP_REVOKE_EXTRA_ATTRIBUTE, attributeId,
                DEFAULT_CATEGORY, category))
        {
            log.debug("--------    Looking for TIMESTAMP_REVOKE_EXTRA_ATTRIBUTE");
            Map map = callRestProvider(issuer, context);
            Object valueObj = map.get("timestamp_revoke_extra");
            log.debug("--------    Value for TIMESTAMP_REVOKE_EXTRA_ATTRIBUTE: {}", valueObj);
            if (valueObj!=null) {
                String value = valueObj.toString();
                Date dt = simpleDateFormat.parse(value);
                log.debug("--------    TIMESTAMP_REVOKE_EXTRA_ATTRIBUTE: date/time={}", dt);
                return createDateTimeResult(dt);
            }
            return createEmptyDateTimeResult();
        }

        // Check if attribute is 'team-id'
        if (attributeMatches(
                PolicyConstants.STRING_DATA_TYPE, attributeType,
                TEAM_ID_ATTRIBUTE, attributeId,
                SND_CATEGORY, category))
        {
            // Get team-id
            String teamID = getUserTeamID(issuer, context);
            log.warn("--------    Found team id: {}", teamID);
            if (StringUtils.isBlank(teamID)) {
                return createEmptyResult(STRING_TYPE_URI);
            }

            return createStringResult(teamID);
        }

        // Check if attribute is 'under-emergency'
        if (attributeMatches(
                PolicyConstants.STRING_DATA_TYPE, attributeType,
                UNDER_EMERGENCY_ATTRIBUTE, attributeId,
                SND_CATEGORY, category))
        {
            log.debug("--------    Looking for UNDER_EMERGENCY_ATTRIBUTE");
            Map map = callRestProvider(issuer, context);
            Object valueObj = map.get("under_emergency");
            log.debug("--------    Value for UNDER_EMERGENCY_ATTRIBUTE: {}", valueObj);
            if (valueObj!=null) {
                String value = valueObj.toString();                
                return createStringResult(value);
            }
            return createEmptyResult(STRING_TYPE_URI);
        }

        // Check if attribute is 'active-emergency-team-id'
        if (attributeMatches(
                PolicyConstants.STRING_DATA_TYPE, attributeType,
                ACTIVE_EMERGENCY_TEAM_ID_ATTRIBUTE, attributeId,
                SND_CATEGORY, category))
        {
            log.debug("--------    Looking for ACTIVE_EMERGENCY_TEAM_ID_ATTRIBUTE");
            Map map = callRestProvider(issuer, context);
            Object valueObj = map.get("team_under_emergency");
            log.debug("--------    Value for ACTIVE_EMERGENCY_TEAM_ID_ATTRIBUTE: {}", valueObj);
            if (valueObj!=null) {
                String value = valueObj.toString();                
                return createStringResult(value);
            }
            return createEmptyResult(STRING_TYPE_URI);
        }

        // Check if attribute is 'emergency-active'
        if (attributeMatches(
                PolicyConstants.STRING_DATA_TYPE, attributeType,
                EMERGENCY_ACTIVE_ATTRIBUTE, attributeId,
                SND_CATEGORY, category))
        {
            log.debug("--------    Looking for EMERGENCY_ACTIVE_ATTRIBUTE");
            Map map = callRestProvider(issuer, context);
            Object valueObj = map.get("emergency_active");
            log.debug("--------    Value for EMERGENCY_ACTIVE_ATTRIBUTE: {}", valueObj);
            if (valueObj!=null) {
                String value = valueObj.toString();                
                return createStringResult(value);
            }
            return createEmptyResult(STRING_TYPE_URI);
        }

        // Check if attribute is 'starter-id'
        if (attributeMatches(
                PolicyConstants.STRING_DATA_TYPE, attributeType,
                STARTER_ID_ATTRIBUTE, attributeId,
                SND_CATEGORY, category))
        {
            log.debug("--------    Looking for STARTER_ID");
            Map map = callRestProvider(issuer, context);
            Object valueObj = map.get("starter_id");
            log.debug("--------    Value for STARTER_ID: {}", valueObj);
            if (valueObj!=null) {
                String value = valueObj.toString();                
                return createStringResult(value);
            }
            return createEmptyResult(STRING_TYPE_URI);
        }

        // Check if attribute is 'user-id'
        if (attributeMatches(
                PolicyConstants.STRING_DATA_TYPE, attributeType,
                USER_ID_ATTRIBUTE, attributeId,
                SND_CATEGORY, category))
        {
            // Get team-id
            String userID = getUserTeamID(issuer, context);
            log.warn("--------    Found user id: {}", userID);
            if (StringUtils.isBlank(userID)) {
                return createEmptyResult(STRING_TYPE_URI);
            }

            return createStringResult(userID);
        }

        // Check if attribute is 'team-tag'
        if (attributeMatches(
                PolicyConstants.STRING_DATA_TYPE, attributeType,
                TEAM_TAG_ATTRIBUTE, attributeId,
                SND_CATEGORY, category))
        {
            log.debug("--------    Looking for TEAM_TAG");
            Map map = callRestProvider(issuer, context);
            Object valueObj = map.get("team_tag");
            log.debug("--------    Value for TEAM_TAG: {}", valueObj);
            if (valueObj!=null) {
                String value = valueObj.toString();                
                return createStringResult(value);
            }
            return createEmptyResult(STRING_TYPE_URI);
        }     



        log.debug("--------    ATTRIBUTE NOT FOUND: id={}, type={}, category={}", attributeId, attributeType, category);
        return createEmptyResult(attributeType);
    }

    // =========================================================================================

    private String getKeycloakCustomClaim(URI customClaimUri, String issuer, EvaluationCtx context) {
        log.debug("--------    getKeycloakCustomClaim: Searching for '{}' Keycloak Custom Claim...", customClaimUri);
        String valueStr = findStringAttribute(STRING_TYPE_URI, customClaimUri, issuer, ENV_CATEGORY_URI, context);
        if (StringUtils.isBlank(valueStr)) {
            log.debug("--------    getKeycloakCustomClaim: Not found '{}' in Keycloak Custom Claims", customClaimUri);
            return null;
        }
        log.debug("--------    getKeycloakCustomClaim: Found '{}' Keycloak Custom Claim: {}", customClaimUri, valueStr);
        return valueStr;
    }

    private String getUserID(String issuer, EvaluationCtx context) {
        // Get user attribute 'ambulance-crew-id' from Keycloak data provided in XACML request
        String userID = getKeycloakCustomClaim(KC_USER_ID_ATTRIBUTE_URI, issuer, context);
        if (StringUtils.isBlank(userID)) return null;

        log.warn("--------    getUserID: return: {}", userID);
        return userID.trim();
    }

    private String getUserTeamID(String issuer, EvaluationCtx context) {
        // Get user attribute 'ambulance-crew-id' from Keycloak data provided in XACML request
        String teamID = getKeycloakCustomClaim(KC_TEAM_ID_ATTRIBUTE_URI, issuer, context);
        if (StringUtils.isBlank(teamID)) return null;

        log.warn("--------    getUserteamID: return: {}", teamID);
        return teamID.trim();
    }

    private Map callRestProvider(String issuer, EvaluationCtx context) {
        // Check if REST call result has been previously cached
        /*PDPRequestCtx ctx = null;
        if ((context.getRequestCtx()!=null) && (context.getRequestCtx() instanceof PDPRequestCtx)) {
            ctx = (PDPRequestCtx)context.getRequestCtx();
            log.debug("--------    callRestProvider: PDPRequestCtx found: {}", ctx);
            if (ctx.getExtra()!=null) {
                log.debug("--------    callRestProvider: PDPRequestCtx Cache: {}", ctx.getExtra());
                Object o = ctx.getExtra().get("rest-call-response");
                log.debug("--------    callRestProvider: Cache REST response: {}", o);
                if (o != null)
                    return (Map) o;
            }
        }*/

        // Get input data
        String patientId = findStringAttribute(STRING_TYPE_URI, PATIENT_ID_ATTRIBUTE_URI, issuer, ENV_CATEGORY_URI, context);
        String esId = findStringAttribute(STRING_TYPE_URI, ES_ID_ATTRIBUTE_URI, issuer, ENV_CATEGORY_URI, context);
        String userId = getKeycloakCustomClaim(KC_USER_ID_ATTRIBUTE_URI, issuer, context);
        String teamId = getKeycloakCustomClaim(KC_TEAM_ID_ATTRIBUTE_URI, issuer, context);
        log.debug("--------    callRestProvider: Acquired input data: es-id={}, patient-id={}, user-id={}, team-id={}",
                patientId, esId, userId, teamId);

        // Call REST attribute provider
        String url = restUrlTempl
                .replace("{{es-id}}", esId)
                .replace("{{patient-id}}", patientId)
                .replace("{{user-id}}", userId);
        log.debug("--------    callRestProvider: Calling REST provider: {}", url);
        ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);
        if (response.getStatusCode().is2xxSuccessful()) {
            // Get results
            String json = response.getBody();
            log.debug("--------    callRestProvider: REST provider response: {}", json);
            Map map = gson.fromJson(json, Map.class);
            log.debug("--------    callRestProvider: Response map: {}", map);

            // Cache results
            /*if (ctx!=null && ctx.getExtra()!=null && map!=null) {
                log.debug("--------    callRestProvider: Caching response map: {}", map);
                ctx.getExtra().put("rest-call-response", map);
            }*/

            return map==null ? Collections.emptyMap() : map;
        } else {
            throw new RuntimeException(response.getStatusCode().toString());
        }
    }
}

