/*
 * Add this after the side init, and before the player setVariable lines
*/

if(life_bankingpin == 0 && getNumber(missionConfigFile >> "Life_Banking" >> "pin_system") isEqualTo 1) then {
  0 cutText["","BLACK FADED"];
  0 cutFadeOut 9999999;
  [-1] spawn life_fnc_createPinMenu;
  waitUntil{!isNull (findDisplay 45010)};
  waitUntil{isNull (findDisplay 45010)};
  waitUntil{!isNull (findDisplay 45000)};
  waitUntil{isNull (findDisplay 45000)};
};
