import numpy
import pandas
d = {
    'one': pandas.Series([1.,2.,3.], index = ['a','b','c']),
    'two' : pandas.Series([1.,2.,3.,4.], index = ['a','b','c','d'])
    }
result = pandas.DataFrame(d)