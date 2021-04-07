/*
 * Copyright (C) 2017-2021 Institute of Communication and Computer Systems (imu.iccs.gr)
 *
 * This Source Code Form is subject to the terms of the Mozilla Public License, v2.0.
 * If a copy of the MPL was not distributed with this file, You can obtain one at
 * https://www.mozilla.org/en-US/MPL/2.0/
 */

package eu.asclepios.example.contexthandlers.db;

import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface EmergencyCallRepository extends CrudRepository<EmergencyCallEntity,String> {
    Optional<EmergencyCallEntity> findById(String id);
}