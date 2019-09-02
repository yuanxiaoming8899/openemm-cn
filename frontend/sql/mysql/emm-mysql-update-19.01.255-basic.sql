/*

    Copyright (C) 2019 AGNITAS AG (https://www.agnitas.org)

    This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.
    You should have received a copy of the GNU Affero General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

*/

UPDATE company_tbl SET expire_success = 180 WHERE expire_success = 90;
DELETE FROM company_info_tbl WHERE cname = 'expire.SuccessDef';
DELETE FROM config_tbl WHERE class = 'expire' AND name = 'SuccessDef';
INSERT INTO config_tbl (class, name, value) VALUES ('expire', 'SuccessDef', '180');

INSERT INTO agn_dbversioninfo_tbl (version_number, updating_user, update_timestamp)
	VALUES ('19.01.255', CURRENT_USER, CURRENT_TIMESTAMP);