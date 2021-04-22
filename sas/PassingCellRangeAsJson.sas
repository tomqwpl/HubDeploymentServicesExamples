/*
* In this case we're being passed a JSON stream.
* We can parse it simply using LIBNAME JSON.
* The structure presented by LIBNAME JSON is too
* complex that can be described here in full.
* In this simle example though we can return the
* "root" dataset. This time we do it directly
* by naming the member directly in the
* resultDatasetName program property
*/
LIBNAME l json fileref=streamParm;
