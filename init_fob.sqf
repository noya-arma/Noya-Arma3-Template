openMap true;
sleep 1;
hint "FOB 설치구역 선택";
onMapSingleClick "
'fobMarker' setMarkerPos _pos; 
noya_banner setPos _pos;
noya_banner allowDamage false; 
player setPos _pos;
onMapSingleClick ' ';
openMap false; 
true;";



