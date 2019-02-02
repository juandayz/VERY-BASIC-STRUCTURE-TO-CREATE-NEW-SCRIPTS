//note this script do not uses private section cuz dont have any _local variable to be defined.

//early exit
if !("ItemLetter" in magazines player) exitWith {"you need an itemLetter" call dayz_rollingMessages;};


//proceed
player playActionNow "Medic";//play an action
player removeMagazine "ItemLetter";//remove the itemletter
player addMagazine "ItemBook1";//add a book
[50,0] call player_humanityChange;//add 50 points of humanity
"you craft a book" call dayz_rollingMessages;//msg
