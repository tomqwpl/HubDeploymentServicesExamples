/*
* We ensure that only ODS LISTING is active.
* We then use PROC PRINTTO to route the output.
*/
ODS _ALL_ CLOSE;
ODS LISTING;
PROC PRINTTO PRINT=_webout;
data example;
do i=1 to 10;
j=ranuni(-1);
output;
end;
run;
proc print data=example;
