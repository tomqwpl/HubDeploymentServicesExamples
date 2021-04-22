label _PredValue_ = "Predicted Value of Height";
label _Residual_ = " Residual of Height";
label _ErrorVal_ = "Standardised Error of Height";
_PredValue_ = 82.4285714285714 + (5.53571428571429 * Age);
_Residual_ = (Height - _PredValue_);
_ErrorVal_ = (2.42857142857143 - (0.28571428571429 * Age));
_ErrorVal_ = _ErrorVal_ + Age * (-0.28571428571429 + (0.03571428571429 * 
Age));
_ErrorVal_ = 0.82375447104893 * SQRT(_ErrorVal_);
