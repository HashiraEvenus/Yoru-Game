
function StoreTime(list,newnum,listlength) {
var place = 0;
var place2 = 0;
for(p = listlength-1; p>0; p--)
{
if(p == listlength-1)
{
place = list[p];
list[p] = newnum;
place2 = list[p-1];
}
else if(p==1)
{
list[p] = place;
list[p-1] = place2;
}
else
{
list[p] = place;
place = place2;
place2 = list[p-1];
}
}
return list;
}