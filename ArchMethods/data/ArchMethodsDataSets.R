Lab_no.DM <- c(4241/13, 4242/13, 4243/13, 4247/13, 4248/13, 4342/13)
Locus_no. <- c(17002-1, 17002-2, 17002-3, 12079, 5007, 23002)
Ag <-c(20, 55, 370, 500, 420, 550)
Sn <- c(15, 2, 2, 25, 3, 70)
Pb <- c(20, 95, 20, 15, 580, 90)
Bi <- c(7, 0.3, 0.4, 21, 0.7, 2)
P <- c(120, 100, 5, 10, 5, 5)
S <- c(180, 10, 10, 25, 10, 40)
Fe <- c(130,190,15,25,35,35)
Co <- c(0.1, 0.4, 0.1, 0.2, 0.3, 3)
Ni <- c(7, 15, 25, 15, 20, 70)
Mo <- c(60, 45, 40, 200, 40, 1.5)
Zn <- c(120, 20, 6, 50, 7, 30)
As <- c(1.5, 0.036, 1.95, 1.94, 0.011, 0.05)
Cu<- c(82, 85, 99, 93, 95, 95)
Sum<- c(83, 85, 101, 95, 95, 95)
ChemicalCompositionOT <- data.frame(Lab_no.DM,Locus_no., Ag,Sn,Pb,Bi,P,S,Fe,Co,Ni,Mo,Zn,As,Cu,Sum,Fe)
ChemicalCompositionOT
Lab_no.DM Locus_no.  Ag Sn  Pb   Bi   P   S  Fe  Co Ni    Mo  Zn    As Cu Sum
1  326.2308     17001  20 15  20  7.0 120 180 130 0.1  7  60.0 120 1.500 82  83
2  326.3077     17000  55  2  95  0.3 100  10 190 0.4 15  45.0  20 0.036 85  85
3  326.3846     16999 370  2  20  0.4   5  10  15 0.1 25  40.0   6 1.950 99 101
4  326.6923     12079 500 25  15 21.0  10  25  25 0.2 15 200.0  50 1.940 93  95
5  326.7692      5007 420  3 580  0.7   5  10  35 0.3 20  40.0   7 0.011 95  95
6  334.0000     23002 550 70  90  2.0   5  40  35 3.0 70   1.5  30 0.050 95  95

Pit <- c(01-171, 02-070, 08-051)
> Volume_of_soil_sample <- c(285, 70, 445)
> Number_of_seed_and_fruit_remains <- c(95, 73, 192)
> Density <- c(0.33, 1.04, 0.43)
> Total <- c(800, 360, 0)
VolumeSedimentSamples <- data.frame(Pit, Volume_of_soil_sample, Number_of_seed_and_fruit_remains, Density, Total)
> VolumeSedimentSamples
Pit Volume_of_soil_sample Number_of_seed_and_fruit_remains Density Total
1 -170                   285                               95    0.33   800
2  -68                    70                               73    1.04   360
3  -43                   445                              192    0.43     0

Location <- c("Nakhchivan", "Nakhchivan", "Nakhchivan", "Nakhchivan", "Nakhchivan")
Locality <- c("Dize", "Dize", "Dize", "Dize", "Dize")
Specimen <- c("Dize1", "Dize2", "Dize3", "Dize4", "Dize5")
Genbank <- c("JX889722", "JX889723", "JX889724", "JX889725", "JX889726")
HGa <-c("HG4", "HG4", "HG4", "HG4", "HG3")
HGb <- c("Orkney", "Orkney", "Orkney", "Orkney", "TMC")
MitochondrialDNA_Haplogroup_Nakhchivan <- c(Location, Locality, Specimen, Genbank, Mt_haplotype, HGa, HGb)
MitochondrialDNA_Haplogroup_Nakhchivan
[1] "Nakhchivan" "Nakhchivan" "Nakhchivan" "Nakhchivan" "Nakhchivan" "Dize"      
[7] "Dize"       "Dize"       "Dize"       "Dize"       "Dize1"      "Dize2"     
[13] "Dize3"      "Dize4"      "Dize5"      "JX889722"   "JX889723"   "JX889724"  
[19] "JX889725"   "JX889726"   "A"          "B"          "A"          "B"         
[25] "C"          "HG4"        "HG4"        "HG4"        "HG4"        "HG3"       
[31] "Orkney"     "Orkney"     "Orkney"     "Orkney"     "TMC" 

Taxon <- c("Mus_sp", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_musculus", "Mus_musculus_musculus", "Mus_musculus_musculus", "Mus_musculus_musculus", "Mus_musculus_musculus", "Mus_musculus_musculus", "Mus_musculus_castaneus", "Mus_macedonicus_spretoides", "Mus_macedonicus_macedonicus")
> Country <- c("Azerbaijan_Nakhchivan_A", "Azerbaijan_Nakhchivan_TG", "Israel_TG", "Iran_TG", "Syria_TG", "Syria_TG", "Syria_TG", "Syria_P", "Turkey_A", "Cyprus_A", "Georgia_TG", "Georgia_TG", "Georgia_TG", "Georgia_TG", "Georgia_TG", "Bulgaria_TG", "Iran_TG", "Israel_TG", "Georgia_TG")
> MapNumber <- c(1, 2, 3, 4, 5, 6, 7, 7, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
> Localities_site <- c("Ovcular_Tepesi", "Dize_village", "Various", "Ahvaz", "Damascus", "Hamah", "Latakia", "Halula", "Cafer_Hoyuk", "Cap_Andreas_Kastros", "Alazani", "Lagodekhi", "Vachlavan", "Tibissi", "Chiracskaya", "Dobromir", "Espahan", "Various", "Various")
> N <- c(46, 6, 33, 21, 2, 5, 5, 32, 23, 3, 1, 5, 2, 4, 3, 11, 36, 16, 18)
HGc<- c("N/A", 3.4, 1.2.4.11, 3.7.9, 3, 3.6.10, 6.10, "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A")
Error: unexpected numeric constant in "HGc<- c("N/A", 3.4, 1.2.4"
> HGc<- c("N/A", 3-4, 1-2-4-11, 3-7-9, 3, 3-6-10, 6-10, "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A")
Localities_Sites_Specimens_MusSpecies <- c(Taxon, Country, MapNumber, Localities_site, N, HGc)
> Localities_Sites_Specimens_MusSpecies
[1] "Mus_sp"                      "Mus_musculus_domesticus"    
[3] "Mus_musculus_domesticus"     "Mus_musculus_domesticus"    
[5] "Mus_musculus_domesticus"     "Mus_musculus_domesticus"    
[7] "Mus_musculus_domesticus"     "Mus_musculus_domesticus"    
[9] "Mus_musculus_domesticus"     "Mus_musculus_domesticus"    
[11] "Mus_musculus_musculus"       "Mus_musculus_musculus"      
[13] "Mus_musculus_musculus"       "Mus_musculus_musculus"      
[15] "Mus_musculus_musculus"       "Mus_musculus_musculus"      
[17] "Mus_musculus_castaneus"      "Mus_macedonicus_spretoides" 
[19] "Mus_macedonicus_macedonicus" "Azerbaijan_Nakhchivan_A"    
[21] "Azerbaijan_Nakhchivan_TG"    "Israel_TG"                  
[23] "Iran_TG"                     "Syria_TG"                   
[25] "Syria_TG"                    "Syria_TG"                   
[27] "Syria_P"                     "Turkey_A"                   
[29] "Cyprus_A"                    "Georgia_TG"                 
[31] "Georgia_TG"                  "Georgia_TG"                 
[33] "Georgia_TG"                  "Georgia_TG"                 
[35] "Bulgaria_TG"                 "Iran_TG"                    
[37] "Israel_TG"                   "Georgia_TG"                 
[39] "1"                           "2"                          
[41] "3"                           "4"                          
[43] "5"                           "6"                          
[45] "7"                           "7"                          
[47] "7"                           "8"                          
[49] "9"                           "10"                         
[51] "11"                          "12"                         
[53] "13"                          "14"                         
[55] "15"                          "16"                         
[57] "Ovcular_Tepesi"              "Dize_village"               
[59] "Various"                     "Ahvaz"                      
[61] "Damascus"                    "Hamah"                      
[63] "Latakia"                     "Halula"                     
[65] "Cafer_Hoyuk"                 "Cap_Andreas_Kastros"        
[67] "Alazani"                     "Lagodekhi"                  
[69] "Vachlavan"                   "Tibissi"                    
[71] "Chiracskaya"                 "Dobromir"                   
[73] "Espahan"                     "Various"                    
[75] "Various"                     "46"                         
[77] "6"                           "33"                         
[79] "21"                          "2"                          
[81] "5"                           "5"                          
[83] "32"                          "23"                         
[85] "3"                           "1"                          
[87] "5"                           "2"                          
[89] "4"                           "3"                          
[91] "11"                          "36"                         
[93] "16"                          "18"                         
[95] "N/A"                         "-1"                         
[97] "-16"                         "-13"                        
[99] "3"                           "-13"                        
[101] "-4"                          "N/A"                        
[103] "N/A"                         "N/A"                        
[105] "N/A"                         "N/A"                        
[107] "N/A"                         "N/A"                        
[109] "N/A"                         "N/A"                        
[111] "N/A"                         "N/A"                        
[113] "N/A"                         "N/A"  

> Animal <- c("Beaver", "Dog", "Red fox", "Probably wild boar", "Red deer", "Cattle", "Sheep and goat", "Included goat", "Included sheep", "Identified_NISP", "Unidentified", "Total_NR")
> NumberOfRemains_1_171 <- c(1, 3, 1, "N/A", 1, 70, 1, 6, 76, 168, 244)
> NumberOfRemains_1_171 <- c("N/A", 1, 3, 1, "N/A", 1, 70, 1, 6, 76, 168, 244)
> NumberOfRemains_2_070 <- c("N/A", 1, 1, 2, 2, 3, 97, 4, 14, 14, 106, 326, 432)
> NumberOfRemains_8_051 <- c(3, 4, 1, "N/A", 4, 3, 163, 8, 27, 178, 347, 525)
> Frequency_1_171 <- c("N/A", 1-3, 3-9, 3-1, "N/A", 1-3, 92-1, "N/A", "N/A", 31-1, 68-9, "N/A")
> Frequency_2_070 <- c("N/A", 0-9, 0-9, 1-9, 1-9, 2-8, 91-5, "N/A", "N/A", 24-5, 75-5, "N/A")
> Frequency_8_051 <- c(1-7, 2-2, 0-6, "N/A", 2-2, 1-7, 91-6, "N/A", "N/A", 33-9, 66-1, "N/A")
> NumberAndFrequencyLargeMammelsRemainsThreePits_Chalcolithic_OvcularTepesi <- c(Animal, NumberOfRemains_1_171, NumberOfRemains_2_070, NumberOfRemains_8_051, Frequency_1_171, Frequency_2_070, Frequency_8_051)
> NumberAndFrequencyLargeMammelsRemainsThreePits_Chalcolithic_OvcularTepesi
[1] "Beaver"             "Dog"                "Red fox"            "Probably wild boar"
[5] "Red deer"           "Cattle"             "Sheep and goat"     "Included goat"     
[9] "Included sheep"     "Identified_NISP"    "Unidentified"       "Total_NR"          
[13] "N/A"                "1"                  "3"                  "1"                 
[17] "N/A"                "1"                  "70"                 "1"                 
[21] "6"                  "76"                 "168"                "244"               
[25] "N/A"                "1"                  "1"                  "2"                 
[29] "2"                  "3"                  "97"                 "4"                 
[33] "14"                 "14"                 "106"                "326"               
[37] "432"                "3"                  "4"                  "1"                 
[41] "N/A"                "4"                  "3"                  "163"               
[45] "8"                  "27"                 "178"                "347"               
[49] "525"                "N/A"                "-2"                 "-6"                
[53] "2"                  "N/A"                "-2"                 "91"                
[57] "N/A"                "N/A"                "30"                 "59"                
[61] "N/A"                "N/A"                "-9"                 "-9"                
[65] "-8"                 "-8"                 "-6"                 "86"                
[69] "N/A"                "N/A"                "19"                 "70"                
[73] "N/A"                "-6"                 "0"                  "-6"                
[77] "N/A"                "0"                  "-6"                 "85"                
[81] "N/A"                "N/A"                "24"                 "65"                
[85] "N/A"               

TypeOfFish <- c("SilurusGlanis_catfish", "StenodusLeucichthys_sheefish", "BarbusSp_barbel", "CapoetaCapoeta_SevenKhramulya", "CyprindaeIndet", "Total")
> Pit1_171 <- c(2, 1, 1, 38, 693, 735)
> Pit2_070 <- c(1, "-", "-", 14, 319, 334)
> Pit8_051 <- c(1, 1, 1, 121, 1334, 1458)
> FishRemains_CathcolithicPits_OvcularTepesi <- data.frame(TypeOfFish, Pit1_171, Pit2_070, Pit8_051)
> FishRemains_CathcolithicPits_OvcularTepesi
TypeOfFish Pit1_171 Pit2_070 Pit8_051
1         SilurusGlanis_catfish        2        1        1
2  StenodusLeucichthys_sheefish        1        -        1
3               BarbusSp_barbel        1        -        1
4 CapoetaCapoeta_SevenKhramulya       38       14      121
5                CyprindaeIndet      693      319     1334
6                         Total      735      334     1458

FindNumber <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36)
> Element <- c("Pelvis", "Ulna", "Radius", "Mandible", "Mandible", "Scapula", "Scapula", "Scapula", "Calcaneum", "Talus", "Pelvis", "Carpal", "Metacarpals", "Phalanx prox A", "Tarsal", "Metatarsals", "Phalanges", "Calcaneum", "Talus", "Calcaneum", "Talus", "Scapula", "Ulna", "Radius", "Mandibule", "Pelvis", "7th cervical vertebra", "2nd thoracic vertebra", "1st thoracic vertebra", "Sesamoid P", "Calcaneum", "Phalanges", "Lower teeth", "Sesamoids P", "Sesamoids P" )
> Side <- c("Right", "Right", "Right", "Left", "Left", "Left", "Right", "Left", "Right", "Right", "Left", "Right", "Right", "Right", "Right", "Right", "N/A",  "Left",  "Left",  "Left",  "Left", "Right", "Right",  "Right", "Right",  "Right",  "N/A", "N/A", "N/A", "N/A", "N/A", "Right",  "N/A", "Left",  "N/A", "N/A")
> Weight <- c(5.9, 4.7, 5.8, 11.6, 11.5, 4.8, 4.7, 4.3, 2, 1.1, 6.3, 0.8, 3.2, 1.4, 1.1, 4.9, 0.9, 1.9, 1, 1.9, 0.9, 4.3, 3.9, 5.3, 10.3, 5.5, 1.4, 1.6, 1.2, 1.3, 0.1, 2.1, 0.3, 0.2, 0.1, 0.1) 
FusionStage <- c("Fused", "Fused P", "Fused P&D", "N/A", "N/A", "Fused D", "Fused D", "Fused D", "Fused P", "N/A", "Fused", "N/A", "Fused D", "Fused P", "N/A", "Fused D", "Fused P", "Fused P", "N/A", "Fused P", "N/A", "Fused D", "Fused P", "Fused P&D", "N/A", "Fused", "Fused P&D", "Fused P&D", "Fused P&D", "Fused P&D", "N/A", "Fused P", "Fused P", "N/A", "N/A", "N/A")
DepositLayer <- c(1, 1, 1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1, 1, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, "?", "Flotation upper soil", "Flotation upper soil", "Flotation upper soil", "Flotation upper soil", "Flotation upper soil")
> FoxRemains_Chalcolithic_OvcularTepesi_Nakhchivan <- c(FindNumber, Element, Side, Weight, FusionStage, DepositLayer)
> FoxRemains_Chalcolithic_OvcularTepesi_Nakhchivan
[1] "1"                     "2"                     "3"                    
[4] "4"                     "5"                     "6"                    
[7] "7"                     "8"                     "9"                    
[10] "10"                    "11"                    "12"                   
[13] "13"                    "14"                    "15"                   
[16] "16"                    "17"                    "18"                   
[19] "19"                    "20"                    "21"                   
[22] "22"                    "23"                    "24"                   
[25] "25"                    "26"                    "27"                   
[28] "28"                    "29"                    "30"                   
[31] "31"                    "32"                    "33"                   
[34] "34"                    "35"                    "36"                   
[37] "Pelvis"                "Ulna"                  "Radius"               
[40] "Mandible"              "Mandible"              "Scapula"              
[43] "Scapula"               "Scapula"               "Calcaneum"            
[46] "Talus"                 "Pelvis"                "Carpal"               
[49] "Metacarpals"           "Phalanx prox A"        "Tarsal"               
[52] "Metatarsals"           "Phalanges"             "Calcaneum"            
[55] "Talus"                 "Calcaneum"             "Talus"                
[58] "Scapula"               "Ulna"                  "Radius"               
[61] "Mandibule"             "Pelvis"                "7th cervical vertebra"
[64] "2nd thoracic vertebra" "1st thoracic vertebra" "Sesamoid P"           
[67] "Calcaneum"             "Phalanges"             "Lower teeth"          
[70] "Sesamoids P"           "Sesamoids P"           "Right"                
[73] "Right"                 "Right"                 "Left"                 
[76] "Left"                  "Left"                  "Right"                
[79] "Left"                  "Right"                 "Right"                
[82] "Left"                  "Right"                 "Right"                
[85] "Right"                 "Right"                 "Right"                
[88] "N/A"                   "Left"                  "Left"                 
[91] "Left"                  "Left"                  "Right"                
[94] "Right"                 "Right"                 "Right"                
[97] "Right"                 "N/A"                   "N/A"                  
[100] "N/A"                   "N/A"                   "N/A"                  
[103] "Right"                 "N/A"                   "Left"                 
[106] "N/A"                   "N/A"                   "5.9"                  
[109] "4.7"                   "5.8"                   "11.6"                 
[112] "11.5"                  "4.8"                   "4.7"                  
[115] "4.3"                   "2"                     "1.1"                  
[118] "6.3"                   "0.8"                   "3.2"                  
[121] "1.4"                   "1.1"                   "4.9"                  
[124] "0.9"                   "1.9"                   "1"                    
[127] "1.9"                   "0.9"                   "4.3"                  
[130] "3.9"                   "5.3"                   "10.3"                 
[133] "5.5"                   "1.4"                   "1.6"                  
[136] "1.2"                   "1.3"                   "0.1"                  
[139] "2.1"                   "0.3"                   "0.2"                  
[142] "0.1"                   "0.1"                   "Fused"                
[145] "Fused P"               "Fused P&D"             "N/A"                  
[148] "N/A"                   "Fused D"               "Fused D"              
[151] "Fused D"               "Fused P"               "N/A"                  
[154] "Fused"                 "N/A"                   "Fused D"              
[157] "Fused P"               "N/A"                   "Fused D"              
[160] "Fused P"               "Fused P"               "N/A"                  
[163] "Fused P"               "N/A"                   "Fused D"              
[166] "Fused P"               "Fused P&D"             "N/A"                  
[169] "Fused"                 "Fused P&D"             "Fused P&D"            
[172] "Fused P&D"             "Fused P&D"             "N/A"                  
[175] "Fused P"               "Fused P"               "N/A"                  
[178] "N/A"                   "N/A"                   "1"                    
[181] "1"                     "1"                     "1"                    
[184] "1"                     "1"                     "1"                    
[187] "1"                     "1"                     "1"                    
[190] "1"                     "1"                     "1"                    
[193] "1"                     "1"                     "1"                    
[196] "2"                     "3"                     "3"                    
[199] "3"                     "3"                     "4"                    
[202] "4"                     "4"                     "4"                    
[205] "4"                     "4"                     "4"                    
[208] "4"                     "4"                     "?"                    
[211] "Flotation upper soil"  "Flotation upper soil"  "Flotation upper soil" 
[214] "Flotation upper soil"  "Flotation upper soil" 

Element <- c("Mandible", "Mandible", "Mandible", "Vertebrae", "7th cervical vertebra", "1st thoracic vertebra", "1st thoracic vertebra", "2nd thoracic vertebra")
FindNumber <- c("N/A", 4, 5, 25, "N/A", 27, 28, 30, 29)
M1L <- c(16.3, 16.2, 16.2, "PL", 14.9, 13, 13.6, 12)
M1B <- c(6.6, 6.3, 6.3, "GLPa", 20.5, 19.9, 17.5, 17)
M2L <- c(7.3, 8.3, 7.9, "BPacr", 18.9, 18.9, "N/A", "N/A")
M2B <- c(5.9, 5.2, 5.5, "BPacd", 17, 12.5, 11.7, "N/A")
M3L <- c(3.6, 3.5, 3.5, "H", 26.8, 42.6, 40, 38.7)
M3B <- c(3.1, 3.4, 3.2, "BFcr", 9.2, 16.3, 15.5, 15.3)
Number8 <- c(59.5, 61.4, 61.6, "HFcr", 8.2, 7.6, 7.6, "N/A")
Number10 <- c(26.4, 27.7, 27.2, "BFed", 12.4, 14.6, "N/A", "N/A")
Number14 <- c(15.5, 15.4, 15.2, "HFed", 7.6, 7.6, "N/A", "N/A")
Number18 <- c(37.8, 35.3, 35.1, "N/A", "N/A", "N/A", "N/A", "N/A")
MeasurementsFoxSkeletalElementsJar_OvcularTepesi <- data.frame(Element, FindNumber, M1L, M1B, M2L, M2B, M3L, M3B, Number8, Number10, Number14, Number18)
> MeasurementsFoxSkeletalElementsJar_OvcularTepesi
Element FindNumber  M1L  M1B   M2L   M2B  M3L  M3B Number8 Number10 Number14
1              Mandible          4 16.3  6.6   7.3   5.9  3.6  3.1    59.5     26.4     15.5
2              Mandible          5 16.2  6.3   8.3   5.2  3.5  3.4    61.4     27.7     15.4
3              Mandible         25 16.2  6.3   7.9   5.5  3.5  3.2    61.6     27.2     15.2
4             Vertebrae        N/A   PL GLPa BPacr BPacd    H BFcr    HFcr     BFed     HFed
5 7th cervical vertebra         27 14.9 20.5  18.9    17 26.8  9.2     8.2     12.4      7.6
6 1st thoracic vertebra         28   13 19.9  18.9  12.5 42.6 16.3     7.6     14.6      7.6
7 1st thoracic vertebra         30 13.6 17.5   N/A  11.7   40 15.5     7.6      N/A      N/A
8 2nd thoracic vertebra         29   12   17   N/A   N/A 38.7 15.3     N/A      N/A      N/A
Number18
1     37.8
2     35.3
3     35.1
4      N/A
5      N/A
6      N/A
7      N/A
8      N/A

