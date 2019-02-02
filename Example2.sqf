//Now we gonna made same script as example 1 but writed a lil diferent and with some addons


```ruby
private ["_Count_Item_Letter"];
_Count_Item_Letter = {_x == "ItemLetter"} count magazines player;//count how many itemletters player have in his gear.
if (_Count_Item_Letter < 5) exitWith { systemChat "You need 5 itemLetter to do it";};//exit if items letter are less than 5.

//proceed
player playActionNow "Medic";//play an action
player removeMagazine "ItemLetter";//remove the itemletter
player removeMagazine "ItemLetter";//remove the itemletter
player removeMagazine "ItemLetter";//remove the itemletter
player removeMagazine "ItemLetter";//remove the itemletter
player removeMagazine "ItemLetter";//remove the itemletter
player addMagazine "ItemBook1";//add a book
[50,0] call player_humanityChange;//add 50 points of humanity
"you craft a book" call dayz_rollingMessages;//msg
```
