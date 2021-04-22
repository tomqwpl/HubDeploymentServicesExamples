/*
* In this case we're being passed an XML stream.
* We can parse it simply using LIBNAME XML.
* Due to the way that the Excel plugin creates
* the XML, a dataset called DATASET is created.
* We copy that data set here in the program just
* to make that more explicit, but we could just
* set the resultDatasetName program parameter to
* l.DATASET.
* Note that if we'd chosen a parameter name that was
* 8 characters or less we could have just done:
*  LIBNAME streamParm xml;
*/
LIBNAME l xml xmlfileref=streamParm;

DATA DATASET; SET L.DATASET;

