//Same as example 3. But now we dont wanna put the item in the player inventory
//we gonna drop the item in the floor, we also gonna drop a knife tool to the ground


if !("ItemLetter" in magazines player) exitWith {"you need an itemLetter" call dayz_rollingMessages;};//"magazines" are used for items.
if !("ItemKnife" in items player) exitwith {systemChat "You need a Knife";};//"items" are used for tools.


//proceed
player playActionNow "putdown";//we change the medic animation here by putdown one.
player removeMagazine "ItemLetter";//remove the itemletter
["ItemBook1",1,1] call fn_dropItem;//the structure ["itemClassName",kind of item,amount]call fn_dropItem; //(Kind of item) means 1 for items 2 for tools & weapons
["ItemKnife",2,1] call fn_dropItem;//note we use value "2" here, cuz knife its a tool.

//chance condition
if ([0.70] call fn_chance) then { //we increase the chance value to 70
[50,0] call player_humanityChange;//add 50 points of humanity
}else{
[25,0] call player_humanityChange;//add 25 points of humanity
};

"you craft a book" call dayz_rollingMessages;//msg
