data _null_;
file _webout;
dateRequired = &dateRequired;
dateOptional = &dateOptional;
put "dateRequired value was " dateRequired date9. " (" dateRequired +(-1) ")";
put "dateOptional value was " dateOptional date9. " (" dateOptional +(-1) ")";
run;
