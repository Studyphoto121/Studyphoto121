--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.5) ~  Much Love, Ferib 

]]--

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v70=v2(v0(v30,16));if v19 then local v77=0;local v78;while true do if (v77==1) then return v78;end if (v77==0) then v78=v5(v70,v19);v19=nil;v77=1;end end else return v70;end end end);local function v20(v31,v32,v33) if v33 then local v71=(v31/((879 -(282 + 595))^(v32-(2 -1))))%((5 -3)^(((v33-(1 -0)) -(v32-(2 -1))) + (620 -(555 + 64)))) ;return v71-(v71%(932 -(857 + (1711 -(1523 + 114))))) ;else local v72=(570 -(367 + 181 + 20))^(v32-((1322 -394) -(214 + 713))) ;return (((v31%(v72 + v72))>=v72) and (1 + 0)) or (0 + 0) ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35=0;local v36;local v37;while true do if (v35==(1065 -(68 + (1954 -(892 + 65))))) then v36,v37=v1(v16,v18,v18 + (1272 -(226 + (2490 -1446))) );v18=v18 + (8 -6) ;v35=118 -((58 -26) + 85) ;end if (v35==(1 + 0)) then return (v37 * (57 + 199)) + v36 ;end end end local function v23() local v38,v39,v40,v41=v1(v16,v18,v18 + (183 -(67 + 113)) );v18=v18 + 4 ;return (v41 * ((122414669 -91614553) -14022900)) + (v40 * (65886 -(87 + 263))) + (v39 * (189 + 67)) + v38 ;end local function v24() local v42=0;local v43;local v44;local v45;local v46;local v47;local v48;while true do if (v42==(954 -(802 + (547 -397)))) then v47=v20(v44,56 -35 ,55 -(796 -(201 + 571)) );v48=((v20(v44,32)==((1139 -(116 + 1022)) + 0)) and  -(998 -(915 + 82))) or (2 -1) ;v42=3;end if (v42==(0 + 0)) then v43=v23();v44=v23();v42=1 -(0 -0) ;end if (v42==(1190 -((1928 -(814 + 45)) + 118))) then if (v47==(0 -0)) then if (v46==(0 -(0 -0))) then return v48 * (0 + 0) ;else local v101=0;while true do if (v101==(0 -0)) then v47=1 + 0 ;v45=791 -(20 + 348 + 423) ;break;end end end elseif (v47==(6433 -4386)) then return ((v46==(18 -(10 + (33 -25)))) and (v48 * ((3 -2)/0))) or (v48 * NaN) ;end return v8(v48,v47-(1465 -(416 + 26)) ) * (v45 + (v46/((6 -4)^(23 + 11 + 18)))) ;end if ((1 -0)==v42) then v45=439 -(145 + 293) ;v46=(v20(v44,431 -(44 + 386) ,20) * (((874 + 614) -(998 + 488))^(11 + 21))) + v43 ;v42=2 + 0 ;end end end local function v25(v49) local v50;if  not v49 then local v73=0;while true do if (v73==0) then v49=v23();if (v49==(0 -0)) then return "";end break;end end end v50=v3(v16,v18,(v18 + v49) -(1081 -((3456 -2436) + 60)) );v18=v18 + v49 ;local v51={};for v68=1424 -(630 + 793) , #v50 do v51[v68]=v2(v1(v3(v50,v68,v68)));end return v6(v51);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v52=0;local v53;local v54;local v55;local v56;local v57;local v58;local v59;local v60;while true do if (1==v52) then v55=nil;v56=nil;v52=2;end if (v52==4) then while true do if (v53==3) then v60=nil;while true do local v102=0;while true do if (v102==0) then local v107=0 -0 ;while true do if ((0 + 0)==v107) then if (v54==1) then local v142=0 -0 ;local v143;while true do if (v142~=(1467 -(899 + 568))) then else v143=0 + 0 ;while true do if (2==v143) then v54=4 -2 ;break;end if (v143~=(604 -(268 + 335))) then else local v172=290 -(60 + 230) ;while true do if (v172~=0) then else for v177=573 -(426 + 146) ,v59 do local v178=0 + 0 ;local v179;local v180;while true do if (v178==(1457 -(282 + 1174))) then if (v179==(812 -(569 + 242))) then v180=v21()~=0 ;elseif (v179==(5 -3)) then v180=v24();elseif (v179==3) then v180=v25();end v60[v177]=v180;break;end if (v178~=(0 + 0)) then else local v188=1024 -(706 + 318) ;while true do if (v188==0) then v179=v21();v180=nil;v188=1252 -(721 + 530) ;end if (v188==1) then v178=1;break;end end end end end v58[1274 -(945 + 326) ]=v21();v172=2 -1 ;end if (v172==(1 + 0)) then v143=2;break;end end end if (v143~=(700 -(271 + 429))) then else local v173=0 + 0 ;while true do if ((1500 -(1408 + 92))==v173) then v59=v23();v60={};v173=1;end if (v173~=(1087 -(461 + 625))) then else v143=1;break;end end end end break;end end end if (v54==2) then local v144=1288 -(993 + 295) ;local v145;while true do if (v144~=(0 + 0)) then else v145=1171 -(418 + 753) ;while true do if ((0 + 0)==v145) then local v174=0;while true do if (v174~=0) then else for v181=1 + 0 ,v23() do local v182=0 + 0 ;local v183;local v184;while true do if (v182==0) then local v189=0 + 0 ;while true do if (v189~=0) then else v183=529 -(406 + 123) ;v184=nil;v189=1;end if (v189==(1770 -(1749 + 20))) then v182=1 + 0 ;break;end end end if (v182==(1323 -(1249 + 73))) then while true do if (v183==0) then v184=v21();if (v20(v184,1 + 0 ,1146 -(466 + 679) )~=(0 -0)) then else local v190=0 -0 ;local v191;local v192;local v193;local v194;while true do if (v190==(1902 -(106 + 1794))) then while true do if (v191~=2) then else if (v20(v193,1 + 0 ,1 + 0 )==(2 -1)) then v194[2]=v60[v194[5 -3 ]];end if (v20(v193,2,116 -(4 + 110) )==1) then v194[3]=v60[v194[587 -(57 + 527) ]];end v191=1430 -(41 + 1386) ;end if (v191==1) then local v195=0;local v196;while true do if (v195==0) then v196=103 -(17 + 86) ;while true do if (0~=v196) then else local v204=0 + 0 ;while true do if (v204~=(0 -0)) then else v194={v22(),v22(),nil,nil};if (v192==0) then local v205=0 -0 ;local v206;local v207;local v208;while true do if (v205~=(0 -0)) then else v206=0 + 0 ;v207=nil;v205=1;end if (v205==1) then v208=nil;while true do if (v206~=0) then else local v211=0 + 0 ;while true do if (0==v211) then v207=0 -0 ;v208=nil;v211=66 -(30 + 35) ;end if (v211==(1 + 0)) then v206=1;break;end end end if ((1258 -(1043 + 214))==v206) then while true do if (v207==0) then v208=0;while true do if (v208==(0 -0)) then v194[1215 -(323 + 889) ]=v22();v194[4]=v22();break;end end break;end end break;end end break;end end elseif (v192==(2 -1)) then v194[583 -(361 + 219) ]=v23();elseif (v192==(322 -(53 + 267))) then v194[1 + 2 ]=v23() -((415 -(15 + 398))^(998 -(18 + 964))) ;elseif (v192==3) then local v212=0 -0 ;while true do if (v212==(0 + 0)) then v194[3]=v23() -(2^16) ;v194[4]=v22();break;end end end v204=1;end if (v204~=1) then else v196=1 + 0 ;break;end end end if (v196==1) then v191=2;break;end end break;end end end if (0~=v191) then else v192=v20(v184,2,853 -(20 + 830) );v193=v20(v184,4 + 0 ,6);v191=1;end if (v191~=(129 -(116 + 10))) then else if (v20(v193,1 + 2 ,741 -(542 + 196) )==1) then v194[8 -4 ]=v60[v194[4]];end v55[v181]=v194;break;end end break;end if ((0 + 0)~=v190) then else v191=0;v192=nil;v190=1 + 0 ;end if (v190==(1 + 0)) then v193=nil;v194=nil;v190=2;end end end break;end end break;end end end for v185=2 -1 ,v23() do v56[v185-(2 -1) ]=v28();end v174=1;end if (v174==1) then v145=1;break;end end end if (v145==1) then return v58;end end break;end end end v107=1552 -(1126 + 425) ;end if (v107==(406 -(118 + 287))) then v102=3 -2 ;break;end end end if (v102==(1122 -(118 + 1003))) then if (v54~=0) then else local v111=0 -0 ;local v112;while true do if (v111==(377 -(142 + 235))) then v112=0;while true do if (v112==2) then v54=4 -3 ;break;end if (v112~=1) then else local v167=0;while true do if (v167==(0 + 0)) then v57={};v58={v55,v56,nil,v57};v167=1 -0 ;end if (v167==(1 + 0)) then v112=2;break;end end end if (0==v112) then local v168=0 + 0 ;local v169;while true do if (v168~=(0 + 0)) then else v169=0 + 0 ;while true do if (v169==0) then local v176=0;while true do if (v176~=(0 + 0)) then else v55={};v56={};v176=2 -1 ;end if (v176==(2 -1)) then v169=1;break;end end end if (1~=v169) then else v112=1;break;end end break;end end end end break;end end end break;end end end break;end if (v53==1) then local v96=0 -0 ;local v97;while true do if (v96==0) then v97=0;while true do if (v97~=(1 + 0)) then else v53=2;break;end if ((0 -0)~=v97) then else local v113=0;while true do if ((753 -(239 + 514))==v113) then v56=nil;v57=nil;v113=1 + 0 ;end if (v113==1) then v97=1;break;end end end end break;end end end if (0~=v53) then else local v98=1329 -(797 + 532) ;while true do if (v98~=0) then else v54=0 + 0 ;v55=nil;v98=1;end if (v98==(1 + 0)) then v53=2 -1 ;break;end end end if ((1204 -(373 + 829))==v53) then local v99=731 -(476 + 255) ;local v100;while true do if (v99==(1130 -(369 + 761))) then v100=0;while true do if (1~=v100) then else v53=3;break;end if (v100==0) then local v114=0 + 0 ;while true do if (v114==1) then v100=1 -0 ;break;end if (v114==(0 -0)) then v58=nil;v59=nil;v114=1;end end end end break;end end end end break;end if (v52~=2) then else v57=nil;v58=nil;v52=241 -(64 + 174) ;end if (v52==(1 + 2)) then v59=nil;v60=nil;v52=5 -1 ;end if (v52==(336 -(144 + 192))) then v53=216 -(42 + 174) ;v54=nil;v52=1 + 0 ;end end end local function v29(v61,v62,v63) local v64=0;local v65;local v66;local v67;while true do if (v64==0) then v65=v61[1];v66=v61[2];v64=1;end if (1==v64) then v67=v61[3];return function(...) local v79=v65;local v80=v66;local v81=v67;local v82=v27;local v83=1;local v84= -1;local v85={};local v86={...};local v87=v12("#",...) -1 ;local v88={};local v89={};for v93=0,v87 do if (v93>=v81) then v85[v93-v81 ]=v86[v93 + 1 ];else v89[v93]=v86[v93 + 1 ];end end local v90=(v87-v81) + 1 ;local v91;local v92;while true do v91=v79[v83];v92=v91[1];if (v92<=6) then if (v92<=2) then if (v92<=0) then local v108=v91[2];v89[v108]=v89[v108](v13(v89,v108 + 1 ,v84));elseif (v92==1) then for v137=v91[2],v91[3] do v89[v137]=nil;end else local v115=v91[2];local v116,v117=v82(v89[v115](v13(v89,v115 + 1 ,v91[3])));v84=(v117 + v115) -1 ;local v118=0;for v139=v115,v84 do v118=v118 + 1 ;v89[v139]=v116[v118];end end elseif (v92<=4) then if (v92==3) then local v119=v91[2];v89[v119](v89[v119 + 1 ]);else local v120=0;local v121;local v122;local v123;local v124;local v125;while true do if (v120==2) then v91=v79[v83];v89[v91[2]]=v91[3];v83=v83 + 1 ;v91=v79[v83];v125=v91[2];v122,v123=v82(v89[v125](v13(v89,v125 + 1 ,v91[3])));v120=3;end if (v120==4) then v89[v125]=v89[v125](v13(v89,v125 + 1 ,v84));v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]();v83=v83 + 1 ;v91=v79[v83];v120=5;end if (v120==3) then v84=(v123 + v125) -1 ;v121=0;for v165=v125,v84 do local v166=0;while true do if (v166==0) then v121=v121 + 1 ;v89[v165]=v122[v121];break;end end end v83=v83 + 1 ;v91=v79[v83];v125=v91[2];v120=4;end if (v120==1) then v91=v79[v83];v125=v91[2];v124=v89[v91[3]];v89[v125 + 1 ]=v124;v89[v125]=v124[v91[4]];v83=v83 + 1 ;v120=2;end if (v120==5) then v83=v91[3];break;end if (v120==0) then v121=nil;v122,v123=nil;v124=nil;v125=nil;v89[v91[2]]=v63[v91[3]];v83=v83 + 1 ;v120=1;end end end elseif (v92>5) then do return;end else v89[v91[2]]=v89[v91[3]][v91[4]];end elseif (v92<=9) then if (v92<=7) then v83=v91[3];elseif (v92==8) then v89[v91[2]]();else local v128=v91[2];local v129=v89[v91[3]];v89[v128 + 1 ]=v129;v89[v128]=v129[v91[4]];end elseif (v92<=11) then if (v92>10) then if (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end else v89[v91[2]]=v91[3];end elseif (v92==12) then if (v89[v91[2]]==v89[v91[4]]) then v83=v83 + 1 ;else v83=v91[3];end else v89[v91[2]]=v63[v91[3]];end v83=v83 + 1 ;end end;end end end return v29(v28(),{},v17)(...);end return v15("LOL!0B3O00028O00026O00F03F031E3O00434B464B392D514E4746322D443334464D2D2O395158332D385843344B6903023O005F472O033O004B6579030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574034D3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F537475647970686F746F3132312F537475647970686F746F3132312F6D61696E2F5363726970742E6C756103053O007072696E7403043O006E61776800203O00120A3O00014O0001000100023O00260B3O0019000100020004073O0019000100260B00010004000100010004073O0004000100120A000200033O00120D000300043O00200500030003000500060C00030013000100020004073O0013000100120D000300063O001204000400073O00202O00040004000800122O000600096O000400066O00033O00024O00030001000100044O001F000100120D0003000A3O00120A0004000B4O00030003000200010004073O001F00010004073O000400010004073O001F000100260B3O0002000100010004073O0002000100120A000100014O0001000200023O00120A3O00023O0004073O000200012O00063O00017O00",v9(),...);
