/*
 * Add this after case 7
*/
case 8: {
    _value = [_this,2,0,[0]] call BIS_fnc_param;
    _value = [_value] call DB_fnc_numberSafe;
    _query = format["UPDATE players SET banking_pin='%1' WHERE pid='%2'",_value,_uid];
};
