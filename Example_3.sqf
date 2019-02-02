//now same script as example 1 but we add a condition to check if player have a knife to cut the itemletter, we gonna add a chance condition 
//and change the medic animation for putdown animation.



if !("ItemLetter" in magazines player) exitWith {"you need an itemLetter" call dayz_rollingMessages;};//"magazines" are used for items.
if !("ItemKnife" in items player) exitwith {systemChat "You need a Knife";};//"items" are used for tools.


//proceed
player playActionNow "putdown";//we change the medic animation here by putdown one.
player removeMagazine "ItemLetter";//remove the itemletter
player addMagazine "ItemBook1";//add a book

//chance condition
if ([0.15] call fn_chance) then {
[50,0] call player_humanityChange;//add 50 points of humanity
}else{
[25,0] call player_humanityChange;//add 25 points of humanity
};

"you craft a book" call dayz_rollingMessages;//msg
