/*

    Copyright (C) 2022 AGNITAS AG (https://www.agnitas.org)

    This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.
    You should have received a copy of the GNU Affero General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

*/

ALTER TABLE actop_send_mailing_tbl CHANGE for_active_recipients for_active_recipients INT (1) DEFAULT 1 COMMENT 'Represents user statuses for sending: \n0 - Wait for confirm\n1 - Wait for confirm and Active\n2 - Active';

INSERT INTO agn_dbversioninfo_tbl (version_number, updating_user, update_timestamp)
VALUES ('22.10.054', CURRENT_USER, CURRENT_TIMESTAMP);

COMMIT;
