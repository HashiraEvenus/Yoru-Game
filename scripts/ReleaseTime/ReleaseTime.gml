function ReleaseTime(list,listlength) {
var nullval = 99999;
var place = 0;
var place2 = 0;
var returnval = 0;
for(p = 0; p<listlength-1; p++)
{
if(p == listlength-2)
{
returnval = list[p+1];
list[p+1] = place2;
}
else if(p==0)
{
place = list[p+1];
list[p+1] = list[p];
}
else
{
place2 = list[p+1];
list[p+1] = place;
place = place2;
}
}
list[0] = nullval;

var dlist = ds_list_create();
var dlist = ds_list_create();
ds_list_add(dlist,returnval);
ds_list_add(dlist,list);
return dlist;
}