data _null_;
file _webout;
put "boolOptionalNoDefault was &boolOptionalNoDefault";
put "boolOptionalDefaultFalse was &boolOptionalDefaultFalse";
put "boolOptionalDefaultTrue  was &boolOptionalDefaultTrue";
put "boolRequiredNoDefault was &boolRequiredNoDefault";
put "boolRequiredDefaultFalse  was &boolRequiredDefaultFalse";
put "boolRequiredDefaultTrue  was &boolRequiredDefaultTrue";
run;
