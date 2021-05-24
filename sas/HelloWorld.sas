/*
We have access to a fileref called _webout.
Any content we send to _webout is passed back
to the browser.
*/
data _null_;
file _webout;
put 'Hello World!!!!';
run;
