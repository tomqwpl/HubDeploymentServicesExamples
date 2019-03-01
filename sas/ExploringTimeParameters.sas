data _null_;
file _webout;
timeRequired = &timeRequired;
timeOptional = &timeOptional;
put "timeRequired value was " timeRequired time9. '(' timeRequired +(-1) ')';
put "timeOptional value was " timeOptional time9. '(' timeOptional +(-1) ')';
run;
