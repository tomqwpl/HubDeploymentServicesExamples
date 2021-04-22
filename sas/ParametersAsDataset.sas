/*
* A special library called "ctx" is made available
* to the program. It has a single member, "parms".
* This has a single record and contains the values
* of any single valued parameters.
* Here we print the data set to HTML
*/
ODS _ALL_ CLOSE;
ODS HTML body=_webout;
PROC PRINT DATA=ctx.parms;
