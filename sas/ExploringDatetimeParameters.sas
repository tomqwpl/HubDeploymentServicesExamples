data _null_;
file _webout;
value = &datetimeParm;
put "Value submitted was " value datetime17.;
run;
