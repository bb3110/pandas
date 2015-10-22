<script type="text/javascript"
  src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>
# Data handling: pandas

## Olav Vahtras

Computational Python

---

layout: false

## Datahandling in Python

### The `pandas` module

Setup:

```
>>> import pandas as pd
>>> import numpy as np
>>> import matplotlib.pyplot as plt
>>> import seaborn

```

Two main data structures

* Series
* Data frames
---

### Series

One-dimensional labeled data

```
>>> s = pd.Series([0.1, 0.2, 0.3, 0.4])
>>> print s
0    0.1
1    0.2
2    0.3
3    0.4
dtype: float64

```
--
```
>>> print s.index
Int64Index([0, 1, 2, 3], dtype='int64')

```
--
```
>>> print s.values
[ 0.1  0.2  0.3  0.4]

```

---

* indices can be labels (like a dict with order)

```
>>> s = pd.Series(np.arange(4), index=['a', 'b', 'c', 'd'])
>>> print s
a    0
b    1
c    2
d    3
dtype: int64
>>> print s['d']
3
>>>
```
--
* Initialize with dict

```
>>> s = pd.Series({'a': 1, 'b': 2, 'c': 3, 'd': 4})
>>> print s
a    1
b    2
c    3
d    4
dtype: int64
>>>
```
--
* Indexing as a dict

```
>>> print s['a']
1

```
---

* Elementwise operations
```
>>> print s * 100
a    100
b    200
c    300
d    400
dtype: int64

```
--

* Slicing
```
>>> s['b': 'c']
b    2
c    3
dtype: int64
>>>
```

---

* List indexing
```
>>> print s[['b', 'c']]
b    2
c    3
dtype: int64
>>>
```

* Bool indexing
```
>>> print s[s>2]
c    3
d    4
dtype: int64
>>>
```

* Other operations
```
>>> s.mean()
2.5
>>>
```
---

* Alignment on indices
```
>>> s['a':'b'] + s['b':'c']
a   NaN
b     4
c   NaN
dtype: float64
>>>
```
---

Consider a csv file:
```
,BETR801,BETN029,FR04037,FR04012
1998-01-01 00:00:00,-9999,16.0,-9999,-9999
1998-01-01 01:00:00,-9999,13.0,-9999,-9999
1998-01-01 02:00:00,-9999,12.0,-9999,-9999
1998-01-01 03:00:00,-9999,12.0,-9999,-9999
1998-01-01 04:00:00,-9999,11.0,-9999,-9999
1998-01-01 05:00:00,-9999,12.0,-9999,-9999
...
```




