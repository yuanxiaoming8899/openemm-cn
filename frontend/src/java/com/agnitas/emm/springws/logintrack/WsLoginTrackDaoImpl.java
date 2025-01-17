/*

    Copyright (C) 2022 AGNITAS AG (https://www.agnitas.org)

    This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.
    You should have received a copy of the GNU Affero General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

*/

package com.agnitas.emm.springws.logintrack;

import org.agnitas.emm.core.logintracking.dao.AbstractLoginTrackDaoImpl;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * Implementation of {@link AbstractLoginTrackDaoImpl} for tracking webservice logins.
 */
public final class WsLoginTrackDaoImpl extends AbstractLoginTrackDaoImpl {
	
	/** The logger. */
	private static final transient Logger LOGGER = LogManager.getLogger(WsLoginTrackDaoImpl.class);

	@Override
	public final String getTrackingTableName() {
		return "ws_login_track_tbl";
	}

	@Override
	public final Logger getLogger() {
		return LOGGER;
	}

}
