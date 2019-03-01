/* By default the parameters are exposed to the
    program in the form of macro variables. We refer
    to a macro variable using the syntax
    &variable
    Macros variables are only expanded inside double quoted
*/
data _null_;
file _webout;
put "Hello &name!";
run;
