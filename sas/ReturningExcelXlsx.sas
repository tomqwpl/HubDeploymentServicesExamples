/*
* We ensure that only ODS EXCEL is active
* by closing all other destinations and then
* declaring ODS EXCEL with the output routed to
* _webout.
*/
ODS _ALL_ CLOSE;
ODS EXCEL file=_webout;
data example;
do i=1 to 10;
j=ranuni(-1);
output;
end;
run;
proc print data=example;
