/*
 * Add this after each query
*/
banking_pin
/*
 * Example:     case west: {format["SELECT playerid, name, cash, bankacc, adminlevel, donorlevel, cop_licenses, coplevel, cop_gear, blacklist, cop_stats, playtime, banking_pin FROM players WHERE playerid='%1'",_uid];};
*/
/*
 * In case west, add
*/
_tmp = _queryResult select 12;
_queryResult set[16,[_tmp] call DB_fnc_numberSafe];
/*
 * In case independent, add
*/
_tmp = _queryResult select 11;
_queryResult set[16,[_tmp] call DB_fnc_numberSafe];
/*
 * In case civilian, add
*/
_tmp = _queryResult select 13;
_queryResult set[16,[_tmp] call DB_fnc_numberSafe];
