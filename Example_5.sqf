//Now we gonna add some time prevention. other way script can be used again and again and again.
//we gonna remove the chance condition too.


private ["_CountDown"]
_CountDown = time - lastuse;//time its a global variable predefined by the game. lastuse is a global variable that we gonna onces script start to run.

//below means if time variable - lastuse is less than 20 seconds we gonna leave the script
if(_CountDown < 20) exitWith {systemchat "wait few seconds before use it again";};



if !("ItemLetter" in magazines player) exitWith {"you need an itemLetter" call dayz_rollingMessages;};//"magazines" are used for items.
if !("ItemKnife" in items player) exitwith {systemChat "You need a Knife";};//"items" are used for tools.

lastuse = time;//we start to count here.
//proceed
player playActionNow "putdown";//we change the medic animation here by putdown one.
player removeMagazine "ItemLetter";//remove the itemletter
["ItemBook1",1,1] call fn_dropItem;//the structure ["itemClassName",kind of item,amount]call fn_dropItem; //(Kind of item) means 1 for items 2 for tools & weapons
["ItemKnife",2,1] call fn_dropItem;//note we use value "2" here, cuz knife its a tool.
[50,0] call player_humanityChange;//add 50 points of humanity

"you craft a book" call dayz_rollingMessages;//msg
