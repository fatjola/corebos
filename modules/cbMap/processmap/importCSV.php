<?php
/*************************************************************************************************
 * Copyright 2016 JPL TSolucio, S.L. -- This file is a part of TSOLUCIO coreBOS Customizations.
 * Licensed under the vtiger CRM Public License Version 1.1 (the "License"); you may not use this
 * file except in compliance with the License. You can redistribute it and/or modify it
 * under the terms of the License. JPL TSolucio, S.L. reserves all rights not expressly
 * granted by the License. coreBOS distributed by JPL TSolucio S.L. is distributed in
 * the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. Unless required by
 * applicable law or agreed to in writing, software distributed under the License is
 * distributed on an "AS IS" BASIS, WITHOUT ANY WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific language governing
 * permissions and limitations under the License. You may obtain a copy of the License
 * at <http://corebos.org/documentation/doku.php?id=en:devel:vpl11>
 *************************************************************************************************
 *  Module       : Business Mappings:: Import
 *  Version      : 5.4.0
 *  Author       : JPL TSolucio, S. L.
 *************************************************************************************************/
require_once 'config.inc.php';
include_once 'data/CRMEntity.php';
include_once 'modules/Users/Users.php';
include_once 'modules/cbMap/cbMap.php';
require_once 'modules/cbMap/processmap/processMap.php';
require_once 'modules/cbMap/processmap/Import.php';
require_once 'include/utils/utils.php';
require_once 'include/database/PearDatabase.php';

global $adb, $log, $current_user;
$current_user = Users::getActiveAdminUser();
if (isset($argv) && !empty($argv)) {
	$csvfile = $argv[1];
	$mapid = $argv[2];
}
$mapfocus = CRMEntity::getInstance('cbMap');
$mapfocus->retrieve_entity_info($mapid, 'cbMap');
$mapinfo = $mapfocus->Import()->processMap($argv);
?>
