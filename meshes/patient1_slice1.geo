//Meshing calcaneus bone.
//Inputs;
gridsize = 1;
Point(1)= {-0.002592430475998664,0.031311059089952936,0,gridsize};Point(2)= {-0.006899573333141534,0.03132253205746685,0,gridsize};Point(3)= {-0.010345287618855822,0.030461103486038255,0,gridsize};Point(4)= {-0.013360287618855826,0.029168960628895402,0,gridsize};Point(5)= {-0.015944573333141546,0.027458513022328795,0,gridsize};Point(6)= {-0.017553159365692877,0.024557784132634597,0,gridsize};Point(7)= {-0.01838528764310214,0.021112069846920323,0,gridsize};Point(8)= {-0.019682848290459895,0.018097069846920305,0,gridsize};Point(9)= {-0.019657627542907827,0.013789926989777448,0,gridsize};Point(10)= {-0.020108144785959292,0.00991349841834889,0,gridsize};Point(11)= {-0.019677430500245008,0.006037069846920318,0,gridsize};Point(12)= {-0.020075193963504795,0.0021606412754917315,0,gridsize};Point(13)= {-0.018959573333141536,-0.0011525455628739467,0,gridsize};Point(14)= {-0.01754683050218471,-0.0038693587245082622,0,gridsize};Point(15)= {-0.01637528761885583,-0.007200801899916745,0,gridsize};Point(16)= {-0.014924460574156848,-0.00989935872450827,0,gridsize};Point(17)= {-0.012929573333141542,-0.01235696379219764,0,gridsize};Point(18)= {-0.01077600190457012,-0.014522944757059592,0,gridsize};Point(19)= {-0.008495749829402335,-0.016360073010222548,0,gridsize};Point(20)= {-0.0056074304759986815,-0.017975251608928225,0,gridsize};Point(21)= {-0.0022478590183316605,-0.016790787295936832,0,gridsize};Point(22)= {0.0008532838097156104,-0.01580875875069429,0,gridsize};Point(23)= {0.0038682838097156003,-0.01624580189991673,0,gridsize};Point(24)= {0.007313998095429902,-0.015397838995526839,0,gridsize};Point(25)= {0.009771603163119286,-0.013345073010222544,0,gridsize};Point(26)= {0.011621140952572745,-0.011138975481181118,0,gridsize};Point(27)= {0.01318531390787378,-0.008176501581651119,0,gridsize};Point(28)= {0.014521869842266943,-0.005161501581651115,0,gridsize};Point(29)= {0.01582747836644846,-0.0021465015816511113,0,gridsize};Point(30)= {0.016663031734547834,0.0012992127040631768,0,gridsize};Point(31)= {0.018081855238287037,0.004046872780011174,0,gridsize};Point(32)= {0.01937399809542989,0.00707502064512848,0,gridsize};Point(33)= {0.01937399809542989,0.009631576316621343,0,gridsize};Point(34)= {0.019804712381144174,0.012665689679450323,0,gridsize};Point(35)= {0.020533613505224146,0.016374212704063168,0,gridsize};Point(36)= {0.018943283809715605,0.019268612730249185,0,gridsize};Point(37)= {0.0163589980954299,0.020944164300104595,0,gridsize};Point(38)= {0.012913283809715626,0.021835344804238654,0,gridsize};Point(39)= {0.009467569524001324,0.02269677337566725,0,gridsize};Point(40)= {0.006729457302483727,0.024127069846920313,0,gridsize};Point(41)= {0.0041608444813196754,0.02584992698977745,0,gridsize};Point(42)= {0.0019775211200427356,0.0280034984183489,0,gridsize};Point(43)= {-0.00043885904742724247,0.030078758188365473,0,gridsize};
Line(1) = {1,2} ;Line(2) = {2,3} ;Line(3) = {3,4} ;Line(4) = {4,5} ;Line(5) = {5,6} ;Line(6) = {6,7} ;Line(7) = {7,8} ;Line(8) = {8,9} ;Line(9) = {9,10} ;Line(10) = {10,11} ;Line(11) = {11,12} ;Line(12) = {12,13} ;Line(13) = {13,14} ;Line(14) = {14,15} ;Line(15) = {15,16} ;Line(16) = {16,17} ;Line(17) = {17,18} ;Line(18) = {18,19} ;Line(19) = {19,20} ;Line(20) = {20,21} ;Line(21) = {21,22} ;Line(22) = {22,23} ;Line(23) = {23,24} ;Line(24) = {24,25} ;Line(25) = {25,26} ;Line(26) = {26,27} ;Line(27) = {27,28} ;Line(28) = {28,29} ;Line(29) = {29,30} ;Line(30) = {30,31} ;Line(31) = {31,32} ;Line(32) = {32,33} ;Line(33) = {33,34} ;Line(34) = {34,35} ;Line(35) = {35,36} ;Line(36) = {36,37} ;Line(37) = {37,38} ;Line(38) = {38,39} ;Line(39) = {39,40} ;Line(40) = {40,41} ;Line(41) = {41,42} ;Line(42) = {42,43} ;Line(43) = {43,1} ;
Line Loop(49) = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43};
Plane Surface(1) = {49};
Point(44)= {0.0025761409525727474,0.05091510570769414,0,gridsize};Point(45)= {-0.0013002876188558388,0.0506967573895408,0,gridsize};Point(46)= {-0.005176716190284397,0.050316036706617884,0,gridsize};Point(47)= {-0.00905314476171297,0.049808409176472807,0,gridsize};Point(48)= {-0.012498859047427258,0.04890799354478381,0,gridsize};Point(49)= {-0.015944573333141546,0.04788189916012553,0,gridsize};Point(50)= {-0.018959573333141536,0.046746299807180924,0,gridsize};Point(51)= {-0.02197457333314154,0.04526016004206598,0,gridsize};Point(52)= {-0.024249868466293206,0.04350921270406316,0,gridsize};Point(53)= {-0.026281716190284396,0.04094149316594778,0,gridsize};Point(54)= {-0.027789216243078785,0.03834064127549175,0,gridsize};Point(55)= {-0.029443159133841115,0.035756355561206016,0,gridsize};Point(56)= {-0.030598648153868924,0.032741355561206026,0,gridsize};Point(57)= {-0.03111433057812414,0.028864926989777467,0,gridsize};Point(58)= {-0.031398304873857474,0.024557784132634597,0,gridsize};Point(59)= {-0.030811907573178407,0.02068135556120604,0,gridsize};Point(60)= {-0.029727430475998684,0.017616657536272215,0,gridsize};Point(61)= {-0.028320879163883525,0.014651355561206031,0,gridsize};Point(62)= {-0.02725513057288695,0.011205641275491743,0,gridsize};Point(63)= {-0.026047632416697997,0.008190641275491739,0,gridsize};Point(64)= {-0.02503443952674879,0.004744926989777451,0,gridsize};Point(65)= {-0.02449828986538309,0.0012992127040631768,0,gridsize};Point(66)= {-0.023447616266223853,-0.0021465015816511113,0,gridsize};Point(67)= {-0.022463268497033603,-0.005592215867365399,0,gridsize};Point(68)= {-0.021543859047427255,-0.008940040610319236,0,gridsize};Point(69)= {-0.02022778762559091,-0.011622215867365407,0,gridsize};Point(70)= {-0.01867530199098398,-0.01463721586736541,0,gridsize};Point(71)= {-0.01743188365693807,-0.0176522158673654,0,gridsize};Point(72)= {-0.01615993054146371,-0.020667215867365404,0,gridsize};Point(73)= {-0.014763372108080902,-0.023682215867365408,0,gridsize};Point(74)= {-0.013783025716338965,-0.026697215867365412,0,gridsize};Point(75)= {-0.012528226069183954,-0.0301429301530797,0,gridsize};Point(76)= {-0.011206716190284405,-0.03279182328844886,0,gridsize};Point(77)= {-0.00999391557894598,-0.03617293015307968,0,gridsize};Point(78)= {-0.008706180622486806,-0.039187930153079684,0,gridsize};Point(79)= {-0.007222609084623299,-0.04177221586736542,0,gridsize};Point(80)= {-0.006038144761712966,-0.0451102517180365,0,gridsize};Point(81)= {-0.004746001904570113,-0.04782614478228321,0,gridsize};Point(82)= {-0.002568501924775368,-0.04995578729593683,0,gridsize};Point(83)= {0.0004225695240013261,-0.05076337661574748,0,gridsize};Point(84)= {0.002993395423251527,-0.04866364443879397,0,gridsize};Point(85)= {0.004463683088303805,-0.04607935872450826,0,gridsize};Point(86)= {0.005835865042794486,-0.043064358724508256,0,gridsize};Point(87)= {0.006536839824807711,-0.03961864443879397,0,gridsize};Point(88)= {0.007210307648424785,-0.03574221586736541,0,gridsize};Point(89)= {0.008175426666858443,-0.0324161447014622,0,gridsize};Point(90)= {0.00911223037330866,-0.029281501581651118,0,gridsize};Point(91)= {0.010328998095429892,-0.025951749018397696,0,gridsize};Point(92)= {0.012005038483569763,-0.023251501581651124,0,gridsize};Point(93)= {0.013550382095035424,-0.020667215867365404,0,gridsize};Point(94)= {0.014776591359039887,-0.0176522158673654,0,gridsize};Point(95)= {0.016350383812334196,-0.01463721586736541,0,gridsize};Point(96)= {0.017895865042794473,-0.012052930153079691,0,gridsize};Point(97)= {0.019344631222457387,-0.009037930153079687,0,gridsize};Point(98)= {0.020639221318239698,-0.0060229301530796975,0,gridsize};Point(99)= {0.021958283809715595,-0.0033889466656486927,0,gridsize};Point(100)= {0.023250426666858476,-0.00024418038038864776,0,gridsize};Point(101)= {0.02430029281500387,0.003022069846920314,0,gridsize};Point(102)= {0.02574440134337594,0.006037069846920318,0,gridsize};Point(103)= {0.027014869558043136,0.009052069846920308,0,gridsize};Point(104)= {0.027988283809715603,0.012255507167914473,0,gridsize};Point(105)= {0.029280426666858456,0.015491248107390068,0,gridsize};Point(106)= {0.030498540523725137,0.01852778413263459,0,gridsize};Point(107)= {0.030946277519936505,0.022404212704063176,0,gridsize};Point(108)= {0.031394117154274065,0.026280641275491734,0,gridsize};Point(109)= {0.031177620637188708,0.030587784132634577,0,gridsize};Point(110)= {0.03071940403764803,0.03446421270406319,0,gridsize};Point(111)= {0.029711140952572768,0.037851193264121175,0,gridsize};Point(112)= {0.027988283809715603,0.04040553627311641,0,gridsize};Point(113)= {0.026265426666858466,0.04300158519479341,0,gridsize};Point(114)= {0.02451180422901239,0.045232069846920325,0,gridsize};Point(115)= {0.021958283809715595,0.04718007316468417,0,gridsize};Point(116)= {0.018943283809715605,0.0486092614290321,0,gridsize};Point(117)= {0.015626784267970317,0.04953921270406317,0,gridsize};Point(118)= {0.01205185523828703,0.050177001230969825,0,gridsize};Point(119)= {0.008175426666858443,0.050533957709646304,0,gridsize};Point(120)= {0.0038682838097156003,0.050788284145727586,0,gridsize};
Line(44) = {44,45} ;Line(45) = {45,46} ;Line(46) = {46,47} ;Line(47) = {47,48} ;Line(48) = {48,49} ;Line(49) = {49,50} ;Line(50) = {50,51} ;Line(51) = {51,52} ;Line(52) = {52,53} ;Line(53) = {53,54} ;Line(54) = {54,55} ;Line(55) = {55,56} ;Line(56) = {56,57} ;Line(57) = {57,58} ;Line(58) = {58,59} ;Line(59) = {59,60} ;Line(60) = {60,61} ;Line(61) = {61,62} ;Line(62) = {62,63} ;Line(63) = {63,64} ;Line(64) = {64,65} ;Line(65) = {65,66} ;Line(66) = {66,67} ;Line(67) = {67,68} ;Line(68) = {68,69} ;Line(69) = {69,70} ;Line(70) = {70,71} ;Line(71) = {71,72} ;Line(72) = {72,73} ;Line(73) = {73,74} ;Line(74) = {74,75} ;Line(75) = {75,76} ;Line(76) = {76,77} ;Line(77) = {77,78} ;Line(78) = {78,79} ;Line(79) = {79,80} ;Line(80) = {80,81} ;Line(81) = {81,82} ;Line(82) = {82,83} ;Line(83) = {83,84} ;Line(84) = {84,85} ;Line(85) = {85,86} ;Line(86) = {86,87} ;Line(87) = {87,88} ;Line(88) = {88,89} ;Line(89) = {89,90} ;Line(90) = {90,91} ;Line(91) = {91,92} ;Line(92) = {92,93} ;Line(93) = {93,94} ;Line(94) = {94,95} ;Line(95) = {95,96} ;Line(96) = {96,97} ;Line(97) = {97,98} ;Line(98) = {98,99} ;Line(99) = {99,100} ;Line(100) = {100,101} ;Line(101) = {101,102} ;Line(102) = {102,103} ;Line(103) = {103,104} ;Line(104) = {104,105} ;Line(105) = {105,106} ;Line(106) = {106,107} ;Line(107) = {107,108} ;Line(108) = {108,109} ;Line(109) = {109,110} ;Line(110) = {110,111} ;Line(111) = {111,112} ;Line(112) = {112,113} ;Line(113) = {113,114} ;Line(114) = {114,115} ;Line(115) = {115,116} ;Line(116) = {116,117} ;Line(117) = {117,118} ;Line(118) = {118,119} ;Line(119) = {119,120} ;Line(120) = {120,44} ;
Line Loop(50) = {44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120};
Plane Surface(2) = {50,49};
Point(121)= {-0.125,-0.125,0,gridsize};Point(122)= {-0.125,0.125,0,gridsize};Point(123)= {0.125,0.125,0,gridsize};Point(124)= {0.125,-0.125,0,gridsize};
Line(123) = {121,122} ;Line(124) = {122,123} ;Line(125) = {123,124} ;Line(126) = {124,121} ;Line Loop(51) = {123,124,125,126};Plane Surface(3) = {51,50};
Physical Surface(100) = {3};
Physical Surface(200) = {2};
Physical Surface(300) = {1};
Physical Line(10) = {123,124,125,126};