/*
* The key parts here are to use ODS LISTING,
* and to set GOPTIONS GSFNAME to _webout.
* This causes the generated image to be written to
* the _webout stream and hence passed back to the caller.
*/
ODS _ALL_ CLOSE;
ODS LISTING;
data example;
do i=1 to 10;
j=ranuni(-1);
output;
end;
run;
GOPTIONS GSFNAME=_webout;
PROC GPLOT data=example;
plot i*j;
RUN;
