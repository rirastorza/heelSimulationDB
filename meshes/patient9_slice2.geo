//Meshing calcaneus bone.
//Inputs;
gridsize = 1;
Point(1)= {0.00393340506757,0.0127785364831,0,gridsize};Point(2)= {-7.64027240434e-05,0.0120127893665,0,gridsize};Point(3)= {-0.00302492826576,0.0104689914091,0,gridsize};Point(4)= {-0.00656775116052,0.00922945603321,0,gridsize};Point(5)= {-0.0095193727102,0.00765773337415,0,gridsize};Point(6)= {-0.0141582615991,0.00768565807579,0,gridsize};Point(7)= {-0.0183332615991,0.00721509900626,0,gridsize};Point(8)= {-0.0195597360574,0.00366278936654,0,gridsize};Point(9)= {-0.0186416480433,-4.83217445702e-05,0,gridsize};Point(10)= {-0.0176784500138,-0.00375943285568,0,gridsize};Point(11)= {-0.016753310151,-0.00747054396679,0,gridsize};Point(12)= {-0.0158104277447,-0.0111816550779,0,gridsize};Point(13)= {-0.0153616434844,-0.0153566550779,0,gridsize};Point(14)= {-0.0148977545955,-0.0195316550779,0,gridsize};Point(15)= {-0.013986940897,-0.023242766189,0,gridsize};Point(16)= {-0.0118388171546,-0.0258845389126,0,gridsize};Point(17)= {-0.00766381715465,-0.0263521124794,0,gridsize};Point(18)= {-0.00395270604354,-0.0254243347016,0,gridsize};Point(19)= {-0.000839589829801,-0.0237066550779,0,gridsize};Point(20)= {0.00193628890227,-0.0218510995223,0,gridsize};Point(21)= {0.00473892844617,-0.0199955439668,0,gridsize};Point(22)= {0.00749935325047,-0.0181399884112,0,gridsize};Point(23)= {0.00984170622394,-0.0158205439668,0,gridsize};Point(24)= {0.0118195161787,-0.0133915803237,0,gridsize};Point(25)= {0.0139737684147,-0.010717766189,0,gridsize};Point(26)= {0.0153477743082,-0.00747054396679,0,gridsize};Point(27)= {0.0162550156576,-0.00375943285568,0,gridsize};Point(28)= {0.0167366985727,0.000415567144319,0,gridsize};Point(29)= {0.0163281571615,0.00459056714432,0,gridsize};Point(30)= {0.014602849512,0.00768565807579,0,gridsize};Point(31)= {0.0118195161787,0.00954465930401,0,gridsize};Point(32)= {0.00841679151179,0.0106211226999,0,gridsize};Point(33)= {0.00532507173424,0.0123279926373,0,gridsize};
Line(1) = {1,2} ;Line(2) = {2,3} ;Line(3) = {3,4} ;Line(4) = {4,5} ;Line(5) = {5,6} ;Line(6) = {6,7} ;Line(7) = {7,8} ;Line(8) = {8,9} ;Line(9) = {9,10} ;Line(10) = {10,11} ;Line(11) = {11,12} ;Line(12) = {12,13} ;Line(13) = {13,14} ;Line(14) = {14,15} ;Line(15) = {15,16} ;Line(16) = {16,17} ;Line(17) = {17,18} ;Line(18) = {18,19} ;Line(19) = {19,20} ;Line(20) = {20,21} ;Line(21) = {21,22} ;Line(22) = {22,23} ;Line(23) = {23,24} ;Line(24) = {24,25} ;Line(25) = {25,26} ;Line(26) = {26,27} ;Line(27) = {27,28} ;Line(28) = {28,29} ;Line(29) = {29,30} ;Line(30) = {30,31} ;Line(31) = {31,32} ;Line(32) = {32,33} ;Line(33) = {33,1} ;
Line Loop(75) = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33};
Plane Surface(1) = {75};
Point(34)= {0.00671673840091,0.0352381597839,0,gridsize};Point(35)= {0.00207784951202,0.0354213364293,0,gridsize};Point(36)= {-0.00256103937687,0.0355024358953,0,gridsize};Point(37)= {-0.00719992826576,0.0355640714721,0,gridsize};Point(38)= {-0.0118388171546,0.0354528220878,0,gridsize};Point(39)= {-0.0157818728865,0.0347433449221,0,gridsize};Point(40)= {-0.018797150488,0.0332089432669,0,gridsize};Point(41)= {-0.0211165951087,0.031032233811,0,gridsize};Point(42)= {-0.023992706114,0.0291766782554,0,gridsize};Point(43)= {-0.0270698357907,0.0273211226999,0,gridsize};Point(44)= {-0.0294665949324,0.0251176505217,0,gridsize};Point(45)= {-0.0308582615991,0.0219090858979,0,gridsize};Point(46)= {-0.0317860393769,0.0182752895428,0,gridsize};Point(47)= {-0.0331777060435,0.0151826968915,0,gridsize};Point(48)= {-0.0333967647051,0.0106211226999,0,gridsize};Point(49)= {-0.0331777060435,0.00605954850829,0,gridsize};Point(50)= {-0.0322499282658,0.00247729546104,0,gridsize};Point(51)= {-0.0310067060717,-0.000976099522348,0,gridsize};Point(52)= {-0.0298016258358,-0.00422332174457,0,gridsize};Point(53)= {-0.0284283674528,-0.00747054396679,0,gridsize};Point(54)= {-0.0265567465117,-0.0102538773001,0,gridsize};Point(55)= {-0.0248277060435,-0.0131637258491,0,gridsize};Point(56)= {-0.0229721505467,-0.0162844328557,0,gridsize};Point(57)= {-0.0211165949324,-0.0186502662595,0,gridsize};Point(58)= {-0.0193701897451,-0.0218510995223,0,gridsize};Point(59)= {-0.0178693727102,-0.0249127662595,0,gridsize};Point(60)= {-0.0160911320086,-0.0278816550779,0,gridsize};Point(61)= {-0.0142452408098,-0.0306649884112,0,gridsize};Point(62)= {-0.0120707619516,-0.0329844328557,0,gridsize};Point(63)= {-0.00905548382131,-0.0346411789882,0,gridsize};Point(64)= {-0.0053443727102,-0.035510050218,0,gridsize};Point(65)= {-0.0011693727102,-0.0351773622127,0,gridsize};Point(66)= {0.00207784951202,-0.0334998650328,0,gridsize};Point(67)= {0.00532507173424,-0.0321262384465,0,gridsize};Point(68)= {0.00764451617869,-0.030123784825,0,gridsize};Point(69)= {0.010494119454,-0.0283455439668,0,gridsize};Point(70)= {0.0130256274308,-0.0260260995223,0,gridsize};Point(71)= {0.0155306272898,-0.0238226274764,0,gridsize};Point(72)= {0.0178500717342,-0.0215727662595,0,gridsize};Point(73)= {0.0201695162962,-0.0195316550779,0,gridsize};Point(74)= {0.0224889606231,-0.0171542246105,0,gridsize};Point(75)= {0.0243445161787,-0.014222704539,0,gridsize};Point(76)= {0.026292849653,-0.0116455439668,0,gridsize};Point(77)= {0.0285927618298,-0.00932609952235,0,gridsize};Point(78)= {0.0302462137487,-0.00607887730013,0,gridsize};Point(79)= {0.0317667384009,-0.00290896995147,0,gridsize};Point(80)= {0.0327446663479,0.000415567144319,0,gridsize};Point(81)= {0.0333168061688,0.00459056714432,0,gridsize};Point(82)= {0.0332149769005,0.00922945603321,0,gridsize};Point(83)= {0.0326945161787,0.0133013696918,0,gridsize};Point(84)= {0.0313415069782,0.0166516782554,0,gridsize};Point(85)= {0.0295864606936,0.0194350115888,0,gridsize};Point(86)= {0.0281881670227,0.022682233811,0,gridsize};Point(87)= {0.0257361828454,0.0249354085149,0,gridsize};Point(88)= {0.0234167384009,0.0268572338551,0,gridsize};Point(89)= {0.0206849483558,0.0291766782554,0,gridsize};Point(90)= {0.0173861830216,0.0305683449221,0,gridsize};Point(91)= {0.0150667384009,0.0326736868567,0,gridsize};Point(92)= {0.0118195161787,0.033970197009,0,gridsize};Point(93)= {0.00810840506757,0.0351409640201,0,gridsize};
Line(34) = {34,35} ;Line(35) = {35,36} ;Line(36) = {36,37} ;Line(37) = {37,38} ;Line(38) = {38,39} ;Line(39) = {39,40} ;Line(40) = {40,41} ;Line(41) = {41,42} ;Line(42) = {42,43} ;Line(43) = {43,44} ;Line(44) = {44,45} ;Line(45) = {45,46} ;Line(46) = {46,47} ;Line(47) = {47,48} ;Line(48) = {48,49} ;Line(49) = {49,50} ;Line(50) = {50,51} ;Line(51) = {51,52} ;Line(52) = {52,53} ;Line(53) = {53,54} ;Line(54) = {54,55} ;Line(55) = {55,56} ;Line(56) = {56,57} ;Line(57) = {57,58} ;Line(58) = {58,59} ;Line(59) = {59,60} ;Line(60) = {60,61} ;Line(61) = {61,62} ;Line(62) = {62,63} ;Line(63) = {63,64} ;Line(64) = {64,65} ;Line(65) = {65,66} ;Line(66) = {66,67} ;Line(67) = {67,68} ;Line(68) = {68,69} ;Line(69) = {69,70} ;Line(70) = {70,71} ;Line(71) = {71,72} ;Line(72) = {72,73} ;Line(73) = {73,74} ;Line(74) = {74,75} ;Line(75) = {75,76} ;Line(76) = {76,77} ;Line(77) = {77,78} ;Line(78) = {78,79} ;Line(79) = {79,80} ;Line(80) = {80,81} ;Line(81) = {81,82} ;Line(82) = {82,83} ;Line(83) = {83,84} ;Line(84) = {84,85} ;Line(85) = {85,86} ;Line(86) = {86,87} ;Line(87) = {87,88} ;Line(88) = {88,89} ;Line(89) = {89,90} ;Line(90) = {90,91} ;Line(91) = {91,92} ;Line(92) = {92,93} ;Line(93) = {93,34} ;
Line Loop(76) = {34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93};
Plane Surface(2) = {76,75};
Point(94)= {-0.125,-0.125,0,gridsize};Point(95)= {-0.125,0.125,0,gridsize};Point(96)= {0.125,0.125,0,gridsize};Point(97)= {0.125,-0.125,0,gridsize};
Line(96) = {94,95} ;Line(97) = {95,96} ;Line(98) = {96,97} ;Line(99) = {97,94} ;Line Loop(77) = {96,97,98,99};Plane Surface(3) = {77,76};
Physical Surface(100) = {3};
Physical Surface(200) = {2};
Physical Surface(300) = {1};
Physical Line(10) = {96,97,98,99};
