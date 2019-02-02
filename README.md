# VERY-BASIC-STRUCTURE-TO-CREATE-NEW-SCRIPTS

```ruby

//1-Private section where all locals variables must be writed to prevent errors about undefined variable
//Code:
Private [""];

//2-define your locals variables.
_localVariable = "";
_localVariable2 = "";

//3-early exit conditions for example  if is some player nearest. or if player dont havve a tool
if (some condition) exitWith {};
if !(player have a tool) exitWith {};  //!(this means IF NOT)


//4-Check conditions to proceed...for example we gonna set a chance condition
if (chance condition) then {}else{};



//5-Actions to execute if script proceed.
```

```ruby
//START WITH A WHOLE EXAMPLE 

//private section
private ["_playerNear"]

//define _locals variables section
_playerNear = {isPlayer _x} count (([player] call FNC_GetPos) nearEntities ["CAManBase",5]) > 1;


//early exit conditions
if (_playerNear) exitWith {"You cannot do it.Thers someone around" call dayz_rollingMessages;};//positive condition to exit

if !("ItemCrowbar" in items player) exitWith {"you need a crowbar in your inventory"call dayz_rollingMessages;};


//proceed conditions
if ([0.50] call fn_chance) then {
//hurt player
r_player_blood = r_player_blood - 300;
player setHit["Hands",0.5];
"Holy shit!... Hurt my hand with the crowbar!" call dayz_rollingMessages;
}else{
//player lost his crowbar
player removeweapon "ItemCrowbar";
systemchat "Crowbar broken";
};

```
//So a basic structure is:
```ruby
private [""];
_define_locals_variables = "";
if () exitWith {};
if () then {};
```
