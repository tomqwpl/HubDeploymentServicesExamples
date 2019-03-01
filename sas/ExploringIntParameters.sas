data _null_;
file _webout;
put "intOptionalNoDefault was &intOptionalNoDefault";
put "intOptionalDefault42 was &intOptionalDefault42";
put "intOptionalMax42 was &intOptionalMax42";
put "intOptionalMin42 was &intOptionalMin42";
put "intRequiredNoDefault was &intRequiredNoDefault";
put "intRequiredDefault42 was &intRequiredDefault42";
run;
