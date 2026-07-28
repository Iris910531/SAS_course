/* market: real rows sampled from this repo's data/marketing.csv,
   inlined as datalines so the analysis is self-contained (the
   original PROC IMPORT read an external CSV). Columns and types
   match the source file's header exactly. */
data market;
  length Education $10 Marital_Status $8 Dt_Customer $10;
  infile datalines dsd dlm=',' missover;
  input ID Year_Birth Education $ Marital_Status $ Income
        Dt_Customer $ Recency MntWines MntFruits MntMeatProducts
        MntFishProducts MntSweetProducts MntGoldProds;
datalines;
433,1958,Master,Alone,61331,10-03-2013,42,534,5,47,0,5,41
7660,1973,PhD,Alone,35860,19-05-2014,37,15,0,8,4,2,20
92,1988,Graduation,Alone,34176,12-05-2014,12,5,7,24,19,14,20
7734,1993,Graduation,Absurd,79244,19-12-2012,58,471,102,125,212,61,245
4369,1957,Master,Absurd,65487,10-01-2014,48,240,67,500,199,0,163
492,1973,PhD,YOLO,48432,18-10-2012,3,322,3,50,4,3,42
11133,1973,PhD,YOLO,48432,18-10-2012,3,322,3,50,4,3,42
5524,1957,Graduation,Single,58138,04-09-2012,58,635,88,546,172,88,88
2174,1954,Graduation,Single,46344,08-03-2014,38,11,1,6,2,1,6
4141,1965,Graduation,Together,71613,21-08-2013,26,426,49,127,111,21,42
6182,1984,Graduation,Together,26646,10-02-2014,26,11,4,20,10,3,5
5324,1981,PhD,Married,58293,19-01-2014,94,173,43,118,46,27,15
7446,1967,Master,Together,62513,09-09-2013,16,520,42,98,0,42,14
965,1971,Graduation,Divorced,55635,13-11-2012,34,235,65,164,50,49,27
6177,1985,PhD,Married,33454,08-05-2013,32,76,10,56,3,1,23
4855,1974,PhD,Together,30351,06-06-2013,19,14,0,24,3,3,2
5899,1950,PhD,Together,5648,13-03-2014,68,28,0,6,1,1,13
1994,1983,Graduation,Married,,15-11-2013,11,5,5,6,0,2,1
387,1976,Basic,Married,7500,13-11-2012,59,6,16,11,11,1,16
2125,1959,Graduation,Divorced,63033,15-11-2013,82,194,61,480,225,112,30
8180,1952,Master,Divorced,59354,15-11-2013,53,233,2,53,3,5,14
2569,1987,Graduation,Married,17323,10-10-2012,38,3,14,17,6,1,5
2114,1946,PhD,Single,82800,24-11-2012,23,1006,22,115,59,68,45
9736,1980,Graduation,Married,41850,24-12-2012,51,53,5,19,2,13,4
4939,1946,Graduation,Together,37760,31-08-2012,20,84,5,38,150,12,28
6565,1949,Master,Married,76995,28-03-2013,91,1012,80,498,0,16,176
2278,1985,2n Cycle,Single,33812,03-11-2012,86,4,17,19,30,24,39
9360,1982,Graduation,Married,37040,08-08-2012,41,86,2,73,69,38,48
5376,1979,Graduation,Married,2447,06-01-2013,42,1,1,1725,1,1,1
1993,1949,PhD,Married,58607,23-12-2012,63,867,0,86,0,0,19
4047,1954,PhD,Married,65324,11-01-2014,0,384,0,102,21,32,5
1409,1951,Graduation,Together,40689,18-03-2013,69,270,3,27,39,6,99
7892,1969,Graduation,Single,18589,02-01-2013,89,6,4,25,15,12,13
2404,1976,Graduation,Married,53359,27-05-2013,4,173,4,30,3,6,41
5255,1986,Graduation,Single,,20-02-2013,19,5,1,3,3,263,362
9422,1989,Graduation,Married,38360,31-05-2013,26,36,2,42,20,21,10
1966,1965,PhD,Married,84618,22-11-2013,96,684,100,801,21,66,0
6864,1989,Master,Divorced,10979,22-05-2014,34,8,4,10,2,2,4
3033,1963,Master,Together,38620,11-05-2013,56,112,17,44,34,22,89
5710,1970,Graduation,Together,40548,10-10-2012,31,110,0,5,2,0,3
7373,1952,PhD,Divorced,46610,29-10-2012,8,96,12,96,33,22,43
8755,1946,Master,Married,68657,20-02-2013,4,482,34,471,119,68,22
10738,1951,Master,Single,49389,29-08-2013,55,40,0,19,2,1,3
4339,1970,PhD,Married,67353,31-12-2013,37,702,17,151,0,8,35
10755,1976,2n Cycle,Married,23718,02-09-2013,76,6,3,14,15,7,36
8595,1973,Graduation,Widow,42429,11-02-2014,99,55,0,6,2,0,4
2968,1943,PhD,Divorced,48948,01-02-2013,53,437,8,206,160,49,42
8601,1980,Graduation,Married,80011,29-04-2013,3,421,76,536,82,178,102
503,1985,Master,Married,20559,12-03-2013,88,13,1,29,3,0,7
8430,1957,Graduation,Together,21994,24-12-2012,4,9,0,6,3,1,3
7281,1959,PhD,Single,,05-11-2013,80,81,11,50,3,2,39
2139,1975,Master,Married,7500,02-10-2013,19,3,1,10,3,2,12
1371,1976,Graduation,Single,79941,28-06-2014,72,123,164,266,227,30,174
9909,1996,2n Cycle,Married,7500,09-11-2012,24,3,18,14,15,22,50
7286,1968,Graduation,Together,41728,24-05-2013,92,13,6,15,3,5,13
7244,1951,Graduation,Single,,01-01-2014,96,48,5,48,6,10,7
6566,1954,PhD,Married,72550,08-11-2012,39,826,50,317,50,38,38
8614,1957,Graduation,Widow,65486,12-05-2014,29,245,19,125,37,67,14
4114,1964,Master,Married,79143,11-08-2012,2,650,37,780,27,167,32
1331,1977,Graduation,Single,35790,02-01-2013,54,12,6,20,30,1,3
2225,1977,Graduation,Divorced,82582,07-06-2014,54,510,120,550,156,40,241
9381,1978,Graduation,Married,66373,12-06-2013,57,328,9,124,12,24,109
;
run;

/* --- analysis below is verbatim from code/sas_final_project.sas (lines 6-123) --- */
data market_complete;
set market;
v1=cmiss(of _all_);
if v1>1 then delete;
drop v1 MntFruits MntFishProducts MntSweetProducts;
run;

proc means data=market_complete n max min mean std lclm uclm skew kurt maxdec=2;
var MntWines MntMeatProducts MntGoldProds;
run;

proc univariate data=market_complete plot;
var MntWines MntMeatProducts MntGoldProds;
run;

proc univariate data=market_complete noprint;
var MntWines MntMeatProducts MntGoldProds;
histogram / normal;
run;

proc univariate data=market_complete plot;
var Income;
run;


data Income_gp;
set market_complete;
attrib incomegp length=$20;
if Income<30000 then incomegp="<30000";
else if Income>=30000 and Income<50000 then incomegp="30000~50000";
else if Income>=50000 and Income<70000 then incomegp="50000~70000";
else incomegp=">70000";
if Marital_Status="Absurd" then Marital_Status="Single";
if Marital_Status="Alone" then Marital_Status="Single";
if Marital_Status="YOLO" then Marital_Status="Single";
run;
/*由於Marital_Status裡Absurd Alone YOLO資料太少 無法進行關聯性分析
於是這些其實也是等於single 我把它改成single這類*/

data Wine;
set Income_gp;
attrib wine length=$20;
if MntWines<300 then wine="<300";
else if MntWines>=300 and MntWines<600 then wine="300~600";
else if MntWines>=600 and MntWines<900 then wine="600~900";
else if MntWines>=900 and MntWines<1200 then wine="900~1200";
else wine=">1200";
keep ID Year_Birth Education Marital_Status Income Recency MntWines wine incomegp;
run;


data Meat;
set Income_gp;
attrib meat length=$20;
if MntMeatProducts<150 then meat="<150";
else if MntMeatProducts>=150 and MntMeatProducts<300 then meat="150~300";
else if MntMeatProducts>=300 and MntMeatProducts<500 then meat="300~500";
else if MntMeatProducts>=450 and MntMeatProducts<700 then meat="450~700";
else meat=">700";
keep ID Year_Birth Education Marital_Status Income Recency  MntMeatProducts meat incomegp;
run;

data Gold;
set Income_gp;
attrib gold length=$20;
if MntGoldProds<50 then gold="<50";
else if MntGoldProds>=50 and MntGoldProds<100 then gold="50~100";
else if MntGoldProds>=100 and MntGoldProds<150 then gold="100~150";
else if MntGoldProds>=150 and MntGoldProds<200 then gold="150~200";
else gold=">200";
keep ID Year_Birth Education Marital_Status Income  Recency MntGoldProds gold incomegp;
run;

proc freq data=Wine;
table Education*wine;
tables Education*wine / chisq;
run;

proc freq data=Wine;
table Marital_Status*wine;
tables Marital_Status*wine / chisq;
run;

proc freq data=Wine;
table incomegp*wine;
tables incomegp*wine / chisq;
run;

proc freq data=Meat;
table Education*meat;
tables Education*meat / chisq;
run;

proc freq data=Meat;
table Marital_Status*meat;
tables Marital_Status*meat / chisq;
run;

proc freq data=Meat;
table incomegp*meat;
tables incomegp*meat / chisq;
run;

proc freq data=Gold;
table Education*gold;
tables Education*gold / chisq;
run;

proc freq data=Gold;
table Marital_Status*gold;
tables Marital_Status*gold / chisq;
run;

proc freq data=Gold;
table incomegp*gold;
tables incomegp*gold / chisq;
run;
