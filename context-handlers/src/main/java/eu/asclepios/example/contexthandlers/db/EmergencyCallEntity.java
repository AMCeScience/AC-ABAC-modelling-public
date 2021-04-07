/*
 * Copyright (C) 2017-2021 Institute of Communication and Computer Systems (imu.iccs.gr)
 *
 * This Source Code Form is subject to the terms of the Mozilla Public License, v2.0.
 * If a copy of the MPL was not distributed with this file, You can obtain one at
 * https://www.mozilla.org/en-US/MPL/2.0/
 */

package eu.asclepios.example.contexthandlers.db;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "EMERGENCY_CALLS")
@NoArgsConstructor
public class EmergencyCallEntity implements Serializable {
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private String id;

    @Column(name = "expiration_datetime")
    private Date expirationDateTime;

    @Column(name = "assigned_ambulance_crew_id")
    private String assignedAmbulanceCrewId;
}