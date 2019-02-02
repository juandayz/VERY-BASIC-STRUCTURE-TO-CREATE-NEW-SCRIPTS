//at least we gonna add another action in progress condition to leave the script.


private ["_CountDown"]
_CountDown = time - lastuse;
if (dayz_actionInProgress) exitWith {localize "str_epoch_player_40" call dayz_rollingMessages;};//exit if your doing another action,,like bandage yourself
if(_CountDown < 20) exitWith {systemchat "wait few seconds before use it again";};
if !("ItemLetter" in magazines player) exitWith {"you need an itemLetter" call dayz_rollingMessages;};//"magazines" are used for items.
if !("ItemKnife" in items player) exitwith {systemChat "You need a Knife";};//"items" are used for tools.


dayz_actionInProgress = true;//after check all early exit conditions we set as true the action in progress to prevent you launch another script while this one is running.

lastuse = time;

//proceed
player playActionNow "putdown";//we change the medic animation here by putdown one.
player removeMagazine "ItemLetter";//remove the itemletter
["ItemBook1",1,1] call fn_dropItem;//the structure ["itemClassName",kind of item,amount]call fn_dropItem; //(Kind of item) means 1 for items 2 for tools & weapons
["ItemKnife",2,1] call fn_dropItem;//note we use value "2" here, cuz knife its a tool.
[50,0] call player_humanityChange;//add 50 points of humanity

"you craft a book" call dayz_rollingMessages;//msg

dayz_actionInProgress = false;//we set the action in progress as false again to allow run others scripts.
