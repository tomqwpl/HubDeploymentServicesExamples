
ODS _ALL_ CLOSE;
ODS PDF file=pdfout;
ODS HTML body=htmlout;
ODS LISTING;
PROC PRINTTO PRINT=listout;

data example;
do i=1 to 10;
j=ranuni(-1);
output;
end;
run;
proc print data=example;
