/*
* We ensure that only ODS HTML is active.
* We can simply then write the HTML body to
* the _webout stream
*/
ODS _ALL_ CLOSE;
ODS HTML body=_webout;
data example;
do i=1 to 10;
j=ranuni(-1);
output;
end;
run;
proc print data=example;
