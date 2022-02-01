player setObjectTextureGlobal [0, "RR_Textures\police\vehicles\policeifritback.paa"]; 


cursorObject setObjectTextureGlobal [0, "RR_Textures\police\vehicles\policeifritback.paa"]; 
cursorObject setObjectTextureGlobal [1, "RR_Textures\police\vehicles\policeifritback.paa"]; 
cursorObject setObjectTextureGlobal [2, "RR_Textures\police\vehicles\policeifritback.paa"]; 
cursorObject setObjectTextureGlobal [3, "RR_Textures\police\vehicles\policeifritback.paa"];

cursorObject setObjectMaterialGlobal [0,"RR_Textures\rvmats\vehicles\goldchrome.rvmat"];
cursorObject setObjectMaterialGlobal [1,"RR_Textures\rvmats\vehicles\goldchrome.rvmat"];
cursorObject setObjectMaterialGlobal [2,"RR_Textures\rvmats\vehicles\goldchrome.rvmat"];
cursorObject setObjectMaterialGlobal [3,"RR_Textures\rvmats\vehicles\goldchrome.rvmat"];

player setObjectMaterialGlobal [0,"RR_Textures\rvmats\vehicles\goldchrome.rvmat"];
player setObjectMaterialGlobal [1,"RR_Textures\rvmats\vehicles\goldchrome.rvmat"];
player setObjectMaterialGlobal [2,"RR_Textures\rvmats\vehicles\goldchrome.rvmat"];
player setObjectMaterialGlobal [3,"RR_Textures\rvmats\vehicles\goldchrome.rvmat"];

player setObjectTextureGlobal [0, ""]

{
  detach _x;
} forEach attachedObjects player;
_dir = getdir player;
_obj = "RoadBarrier_F" createVehicle position player;
_obj setDir _dir;
_obj attachTo[player,[0,5.5,0]];

_objs = nearestObjects [player, [], 2];
deleteVehicle _objs;




