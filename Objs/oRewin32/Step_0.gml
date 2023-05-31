
if keyboard_check(ord("O")){
	rewinding = true; 
if(rewinding)
{
var newlist = ReleaseTime(pastx,rewindseconds*30);
var previous_value = ds_list_find_value(newlist,0);
pastx = ds_list_find_value(newlist,1);
if(previous_value !=99999) //if its empty - 99999 represents an empty element
{
oPlayer.x = previous_value ;
}
ds_list_destroy(newlist);
newlist = ReleaseTime(pasty,rewindseconds*30);
previous_value = ds_list_find_value(newlist,0);
pasty = ds_list_find_value(newlist,1);
ds_list_destroy(newlist);
if(previous_value!=99999) //if its empty
{
oPlayer.y = previous_value;
}
}}
else
{
pastx = StoreTime(pastx,oPlayer.x,rewindseconds*30);
pasty = StoreTime(pasty,oPlayer.y,rewindseconds*30);
}