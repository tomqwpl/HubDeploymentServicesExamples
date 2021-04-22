libname IN ".";
proc decisiontree
	data = IN.IRISDATA
	method = CART (
		criterion = GINI
	)
	;
	input sepallength sepalwidth petallength petalwidth / level = interval;
	target species / level = nominal;

	code file="./ScoreDecisionTree.sas" indent=4 noleafid;
run;
