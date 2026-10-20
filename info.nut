
/*
* This file is part of Configurable Subsidies, a Game Script for OpenTTD.
* Copyright (C) 2026 Krelsis.net
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
* See the GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program. If not, see <https://www.gnu.org/licenses/>.
*/

class ConfigurableSubsidiesInfo extends GSInfo
{
    function GetAuthor()      { return "Krelsis.net"; }
    function GetName()        { return "Configurable Subsidies"; }
	function GetShortName()   { return "CSUB"; }
    function GetDescription() {
        return "Supplements vanilla subsidies with additional configurable subsidies with configurable distance and frequency.";
    }
    function GetVersion()     { return 1; }
    function GetDate()        { return "2026-10-20"; }
    function CreateInstance() { return "ConfigurableSubsidiesController"; }
    function GetAPIVersion()  { return "15"; }

    function GetSettings()
    {
        AddSetting({
            name = "max_distance",
            description = "Subsidy distance limit",
            min_value = 0,
            max_value = 1048576,
            default_value = 500,
			step_size = 10,
            flags = CONFIG_INGAME
        });

        AddSetting({
            name = "generation_interval",
            description = "Subsidy generation interval",
            min_value = 1,
            max_value = 48,
            default_value = 3,
            flags = CONFIG_INGAME
        });

		AddSetting({
            name = "use_weeks",
            description = "Use weeks instead of months (generation interval)",
            min_value = 0,
            max_value = 1,
            default_value = 0,
            flags = CONFIG_BOOLEAN | CONFIG_INGAME
        });

        AddSetting({
            name = "target_offers",
            description = "Maximum subsidy offers (pending subsidies)",
            min_value = 0,
            max_value = 20000,
            default_value = 10,
            flags = CONFIG_INGAME
        });
    }
}

RegisterGS(ConfigurableSubsidiesInfo());
