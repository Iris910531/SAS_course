%let indir=C:\Users\user\Desktop\resume\datasets;
proc import datafile="&indir\marketing.csv" out=market dbms=csv replace; 
getnames=yes;
run;

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
