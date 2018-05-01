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

\reference{
Gailhard, N., Bode, M., Bakhshaliyev, V., Hauptmann, A., & Marro, C. (2017). Archaeometallurgical Investigations in Nakhchivan, Azerbaijan: What Does the Evidence from Late Chalcolithic Ovçular Tepesi Tell Us about the Beginning of Extractive Metallurgy? Journal of Field Archaeology 42(6), p. 530-550.
}

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

\reference{
Berthon,R., Decaix, A., Kovács, E.Z., Van Neer, W., Tengberg, M., Willcox, G., & Cucchi, T. A bioarchaeological investigation of three late
Chalcolithic pits at Ovçular Tepesi (Nakhchivan, Azerbaijan). (2013). The Journal of Human Palaeoecology 13(3), 191-200.
}

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

\reference{
Cucchi, T., Kovacs, E.Z., Berthon, R., Orth, A., Bonhome, F., Evin, A., Siahsarvie, R., Darvish, J., Bakhshaliyev, V., & Marro, C. (2013). On the trail of Neolithic mice and men towards
Transcaucasia: zooarchaeological clues from Nakhchivan (Azerbaijan). Biological Journal of the Linnean Society 108, 917-928.
}

Taxon <- c("Mus_sp", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_domesticus", "Mus_musculus_musculus", "Mus_musculus_musculus", "Mus_musculus_musculus", "Mus_musculus_musculus", "Mus_musculus_musculus", "Mus_musculus_musculus", "Mus_musculus_castaneus", "Mus_macedonicus_spretoides", "Mus_macedonicus_macedonicus")
> Country <- c("Azerbaijan_Nakhchivan_A", "Azerbaijan_Nakhchivan_TG", "Israel_TG", "Iran_TG", "Syria_TG", "Syria_TG", "Syria_TG", "Syria_P", "Turkey_A", "Cyprus_A", "Georgia_TG", "Georgia_TG", "Georgia_TG", "Georgia_TG", "Georgia_TG", "Bulgaria_TG", "Iran_TG", "Israel_TG", "Georgia_TG")
> MapNumber <- c("N/A", 1, 2, 3, 4, 5, 6, 7, 7, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
> Localities_site <- c("Ovcular_Tepesi", "Dize_village", "Various", "Ahvaz", "Damascus", "Hamah", "Latakia", "Halula", "Cafer_Hoyuk", "Cap_Andreas_Kastros", "Alazani", "Lagodekhi", "Vachlavan", "Tibissi", "Chiracskaya", "Dobromir", "Espahan", "Various", "Various")
> N <- c(46, 6, 33, 21, 2, 5, 5, 32, 23, 3, 1, 5, 2, 4, 3, 11, 36, 16, 18)
HGc<- c("N/A", 3.4, 1.2.4.11, 3.7.9, 3, 3.6.10, 6.10, "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A", "N/A")
> Localities_Sites_Specimens_MusSpecies <- data.frame(Taxon, Country, MapNumber, Localities_site, N, HGc)
> Localities_Sites_Specimens_MusSpecies
                         Taxon                  Country MapNumber
1                       Mus_sp  Azerbaijan_Nakhchivan_A       N/A
2      Mus_musculus_domesticus Azerbaijan_Nakhchivan_TG         1
3      Mus_musculus_domesticus                Israel_TG         2
4      Mus_musculus_domesticus                  Iran_TG         3
5      Mus_musculus_domesticus                 Syria_TG         4
6      Mus_musculus_domesticus                 Syria_TG         5
7      Mus_musculus_domesticus                 Syria_TG         6
8      Mus_musculus_domesticus                  Syria_P         7
9      Mus_musculus_domesticus                 Turkey_A         7
10     Mus_musculus_domesticus                 Cyprus_A         7
11       Mus_musculus_musculus               Georgia_TG         8
12       Mus_musculus_musculus               Georgia_TG         9
13       Mus_musculus_musculus               Georgia_TG        10
14       Mus_musculus_musculus               Georgia_TG        11
15       Mus_musculus_musculus               Georgia_TG        12
16       Mus_musculus_musculus              Bulgaria_TG        13
17      Mus_musculus_castaneus                  Iran_TG        14
18  Mus_macedonicus_spretoides                Israel_TG        15
19 Mus_macedonicus_macedonicus               Georgia_TG        16
       Localities_site  N HGc
1       Ovcular_Tepesi 46 N/A
2         Dize_village  6  -1
3              Various 33 -16
4                Ahvaz 21 -13
5             Damascus  2   3
6                Hamah  5 -13
7              Latakia  5  -4
8               Halula 32 N/A
9          Cafer_Hoyuk 23 N/A
10 Cap_Andreas_Kastros  3 N/A
11             Alazani  1 N/A
12           Lagodekhi  5 N/A
13           Vachlavan  2 N/A
14             Tibissi  4 N/A
15         Chiracskaya  3 N/A
16            Dobromir 11 N/A
17             Espahan 36 N/A
18             Various 16 N/A
19             Various 18 N/A

\reference{
Cucchi, T., Kovacs, E.Z., Berthon, R., Orth, A., Bonhome, F., Evin, A., Siahsarvie, R., Darvish, J., Bakhshaliyev, V., & Marro, C. (2013). On the trail of Neolithic mice and men towards
Transcaucasia: zooarchaeological clues from Nakhchivan (Azerbaijan). Biological Journal of the Linnean Society 108, 917-928.
}

> Animal <- c("Beaver", "Dog", "Red fox", "Probably wild boar", "Red deer", "Cattle", "Sheep and goat", "Included goat", "Included sheep", "Identified_NISP", "Unidentified", "Total_NR")
> NumberOfRemains_1_171 <- c("N/A", 1, 3, 1, "N/A", 1, 70, 1, 6, 76, 168, 244)
> NumberOfRemains_2_070 <- c(, 1, 1, 2, 2, 3, 97, 4, 14, 14, 106, 326, 432)>
> NumberOfRemains_8_051 <- c(3, 4, 1, "N/A", 4, 3, 163, 8, 27, 178, 347, 525)
> Frequency_1_171 <- c("N/A", 1-3, 3-9, 3-1, "N/A", 1-3, 92-1, "N/A", "N/A", 31-1, 68-9, "N/A")
> Frequency_2_070 <- c("N/A", 0-9, 0-9, 1-9, 1-9, 2-8, 91-5, "N/A", "N/A", 24-5, 75-5, "N/A")
> Frequency_8_051 <- c(1-7, 2-2, 0-6, "N/A", 2-2, 1-7, 91-6, "N/A", "N/A", 33-9, 66-1, "N/A")
> > NumberAndFrequencyLargeMammelsRemainsThreePits_Chalcolithic_OvcularTepesi <- data.frame(Animal, NumberOfRemains_1_171, NumberOfRemains_2_070, NumberOfRemains_8_051, Frequency_1_171, Frequency_2_070, Frequency_8_051)
> NumberAndFrequencyLargeMammelsRemainsThreePits_Chalcolithic_OvcularTepesi
               Animal NumberOfRemains_1_171 NumberOfRemains_2_070
1              Beaver                   N/A                     1
2                 Dog                     1                     1
3             Red fox                     3                     2
4  Probably wild boar                     1                     2
5            Red deer                   N/A                     3
6              Cattle                     1                    97
7      Sheep and goat                    70                     4
8       Included goat                     1                    14
9      Included sheep                     6                    14
10    Identified_NISP                    76                   106
11       Unidentified                   168                   326
12           Total_NR                   244                   432
   NumberOfRemains_8_051 Frequency_1_171 Frequency_2_070 Frequency_8_051
1                      3             N/A             N/A              -6
2                      4              -2              -9               0
3                      1              -6              -9              -6
4                    N/A               2              -8             N/A
5                      4             N/A              -8               0
6                      3              -2              -6              -6
7                    163              91              86              85
8                      8             N/A             N/A             N/A
9                     27             N/A             N/A             N/A
10                   178              30              19              24
11                   347              59              70              65
12                   525             N/A             N/A             N/A

\reference{
Berthon,R., Decaix, A., Kovács, E.Z., Van Neer, W., Tengberg, M., Willcox, G., & Cucchi, T. A bioarchaeological investigation of three late
Chalcolithic pits at Ovçular Tepesi (Nakhchivan, Azerbaijan). (2013). The Journal of Human Palaeoecology 13(3), 191-200.
}

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

\reference{
Berthon,R., Decaix, A., Kovács, E.Z., Van Neer, W., Tengberg, M., Willcox, G., & Cucchi, T. A bioarchaeological investigation of three late
Chalcolithic pits at Ovçular Tepesi (Nakhchivan, Azerbaijan). (2013). The Journal of Human Palaeoecology 13(3), 191-200.
}

> FindNumber <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36)
> Element <- c("Pelvis", "Ulna", "Radius", "Mandible", "Mandible", "Scapula", "Scapula", "Scapula", "Calcaneum", "Talus", "Pelvis", "Carpal", "Metacarpals", "Phalanx prox A", "Tarsal", "Metatarsals", "Phalanges", "Calcaneum", "Talus", "Calcaneum", "Talus", "Scapula", "Ulna", "Radius", "Mandibule", "Pelvis", "7th cervical vertebra", "1nd thoracic vertebra", "2nd thoracic vertebra", "1st thoracic vertebra", "Sesamoid P", "Calcaneum", "Phalanges", "Lower teeth", "Sesamoids P", "Sesamoids P" ) 
> Side <- c("Right", "Right", "Right", "Left", "Left", "Left", "Right", "Left", "Right", "Right", "Left", "Right", "Right", "Right", "Right", "Right", "N/A",  "Left",  "Left",  "Left",  "Left", "Right", "Right",  "Right", "Right",  "Right",  "N/A", "N/A", "N/A", "N/A", "N/A", "Right",  "N/A", "Left",  "N/A", "N/A")
> Weight <- c(5.9, 4.7, 5.8, 11.6, 11.5, 4.8, 4.7, 4.3, 2, 1.1, 6.3, 0.8, 3.2, 1.4, 1.1, 4.9, 0.9, 1.9, 1, 1.9, 0.9, 4.3, 3.9, 5.3, 10.3, 5.5, 1.4, 1.6, 1.2, 1.3, 0.1, 2.1, 0.3, 0.2, 0.1, 0.1) 
> FusionStage <- c("Fused", "Fused P", "Fused P&D", "N/A", "N/A", "Fused D", "Fused D", "Fused D", "Fused P", "N/A", "Fused", "N/A", "Fused D", "Fused P", "N/A", "Fused D", "Fused P", "Fused P", "N/A", "Fused P", "N/A", "Fused D", "Fused P", "Fused P&D", "N/A", "Fused", "Fused P&D", "Fused P&D", "Fused P&D", "Fused P&D", "N/A", "Fused P", "Fused P", "N/A", "N/A", "N/A")
> DepositLayer <- c(1, 1, 1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1, 1, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, "?", "Flotation upper soil", "Flotation upper soil", "Flotation upper soil", "Flotation upper soil", "Flotation upper soil")
> FoxRemains_Chalcolithic_OvcularTepesi_Nakhchivan <- data.frame(FindNumber, Element, Side, Weight, FusionStage, DepositLayer)
> FoxRemains_Chalcolithic_OvcularTepesi_Nakhchivan
   FindNumber               Element  Side Weight FusionStage
1           1                Pelvis Right    5.9       Fused
2           2                  Ulna Right    4.7     Fused P
3           3                Radius Right    5.8   Fused P&D
4           4              Mandible  Left   11.6         N/A
5           5              Mandible  Left   11.5         N/A
6           6               Scapula  Left    4.8     Fused D
7           7               Scapula Right    4.7     Fused D
8           8               Scapula  Left    4.3     Fused D
9           9             Calcaneum Right    2.0     Fused P
10         10                 Talus Right    1.1         N/A
11         11                Pelvis  Left    6.3       Fused
12         12                Carpal Right    0.8         N/A
13         13           Metacarpals Right    3.2     Fused D
14         14        Phalanx prox A Right    1.4     Fused P
15         15                Tarsal Right    1.1         N/A
16         16           Metatarsals Right    4.9     Fused D
17         17             Phalanges   N/A    0.9     Fused P
18         18             Calcaneum  Left    1.9     Fused P
19         19                 Talus  Left    1.0         N/A
20         20             Calcaneum  Left    1.9     Fused P
21         21                 Talus  Left    0.9         N/A
22         22               Scapula Right    4.3     Fused D
23         23                  Ulna Right    3.9     Fused P
24         24                Radius Right    5.3   Fused P&D
25         25             Mandibule Right   10.3         N/A
26         26                Pelvis Right    5.5       Fused
27         27 7th cervical vertebra   N/A    1.4   Fused P&D
28         28 1nd thoracic vertebra   N/A    1.6   Fused P&D
29         29 2nd thoracic vertebra   N/A    1.2   Fused P&D
30         30 1st thoracic vertebra   N/A    1.3   Fused P&D
31         31            Sesamoid P   N/A    0.1         N/A
32         32             Calcaneum Right    2.1     Fused P
33         33             Phalanges   N/A    0.3     Fused P
34         34           Lower teeth  Left    0.2         N/A
35         35           Sesamoids P   N/A    0.1         N/A
36         36           Sesamoids P   N/A    0.1         N/A
           DepositLayer
1                     1
2                     1
3                     1
4                     1
5                     1
6                     1
7                     1
8                     1
9                     1
10                    1
11                    1
12                    1
13                    1
14                    1
15                    1
16                    1
17                    2
18                    3
19                    3
20                    3
21                    3
22                    4
23                    4
24                    4
25                    4
26                    4
27                    4
28                    4
29                    4
30                    4
31                    ?
32 Flotation upper soil
33 Flotation upper soil
34 Flotation upper soil
35 Flotation upper soil
36 Flotation upper soil

\reference{
Berthon, R. (2017). A ritual deposit of fox remains at Ovçular Tepesi (Nakhchivan, Azerbaijan) and its relation with the pastoral nature of Late Chalcolithic communities. Journal of Archaeological Science, 1-7.
}

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

\reference{
Berthon, R. (2017). A ritual deposit of fox remains at Ovçular Tepesi (Nakhchivan, Azerbaijan) and its relation with the pastoral nature of Late Chalcolithic communities. Journal of Archaeological Science, 1-7.
}

> Locus <- c(5212, 5077, 5161, 5194, 5137, 5259, 5333, 11267)
> RadiocarbonAge_BP <- c(5200-45, 5210-50, 5215-50, 5364-40, 5389-45, 5450-45, 5600-45, 5635-45)
> Material <- c("Wood charcoal", "Seed", "Wood charcoal", "Wood charcoal", "Wood charcoal", "Wood charcoal", "Wood charcoal", "Wood charcoal")
> RadiocarbonDates_SelectSamples_OvcularTepesi <- data.frame(SampleID, Locus, RadiocarbonAge_BP, Material)
> RadiocarbonDates_SelectSamples_OvcularTepesi
   SampleID Locus RadiocarbonAge_BP      Material
1 LTL13320A  5212              5155 Wood charcoal
2  LTL5311A  5077              5160          Seed
3  LTL5312A  5161              5165 Wood charcoal
4  LTL8087A  5194              5324 Wood charcoal
5 LTL13319A  5137              5344 Wood charcoal
6 LTL13321A  5259              5405 Wood charcoal
7 LTL12565A  5333              5555 Wood charcoal
8 LTL13323A 11267              5590 Wood charcoal

\reference{
Marro, C., Berthon, R., & Bakhshaliyev, V. (2014). On the Genesis of the Kura-Araxes phenomenon: New evidence from Nakhchivan (Azerbaijan). Paleorient 40(2), 131-154.
}
