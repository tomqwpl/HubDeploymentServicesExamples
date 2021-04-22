/*Set up a data set for the mean height of Boys given their age. 
  The relationship between the age of 5 and 11 is roughly linear 
  during this time frame see: 
  https://www.who.int/growthref/cht_hfa_boys_z_5_19years.pdf?ua=1 
  We therefore fit a linear model to predict a boys height
  given his age and generating some scoring code that can be used
  to predict a boys height given his age at a later point. */
data BoysHeightAge;
input Age Height;
datalines;
5 109
6 116
7 122
8 127
9 133
10 137
11 143
;

*Fits the linear model to the input data and generates the scoring code;
ods _all_ close;
proc reg data=BoysHeightAge plots=fitplot;
model Height = Age;
code file="./ScoreHeightDataBoys.sas" residual error;
run;
