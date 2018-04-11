# Numpy commands


## Reshaping/resizing arrays


### Array reshaping (`np.reshape()`)

~~~~
a = np.array([1,2,3,4,5,6,7,8,9])
grid = a.reshape(3,3)

grid = np.array([
        [1,2,3],
        [4,5,6],
        [7,8,9]
        ])

grid = grid[::-1]
grid = grid.T
grid = grid.T[::-1]
~~~~

### Array resizing (`np.resize()`)

References:
- https://stackoverflow.com/questions/9251635/python-resize-an-existing-array-and-fill-with-zeros
- https://stackoverflow.com/questions/33256823/numpy-resize-array-filling-with-0

Note:
- If the size of the array is larger than the original array, the elements will be repeated

~~~~
a = np.array([1,2,3,4,5,6,7,8,9])
truncated = np.resize(a, (3,2))
repeated = np.resize(a, (5,5))
~~~~

Output:

~~~~
truncated =
array([[1, 2],
       [3, 4],
       [5, 6]])
~~~~

~~~~
repeated =
array([[1, 2, 3, 4, 5],
       [6, 7, 8, 9, 1],
       [2, 3, 4, 5, 6],
       [7, 8, 9, 1, 2],
       [3, 4, 5, 6, 7]])
~~~~


## Vectorize a function:

`np.vectorize` takes a scalar function and creates a function which can be applied to numpy arrays.

~~~~
vtrapzeoid = np.vectorize(trapezoid)
~~~~

## Handling `nan`s

A `nan` value can be assigned as:

~~~~
a = np.nan
~~~~

or 

~~~~
a = math.nan
~~~~

### Ignoring `nan`s

| Operation |     Function   |
| --------- | -------------- |
|   Mean    | `np.nanmean()` |
|   Std     | `np.nanstd()`  |

