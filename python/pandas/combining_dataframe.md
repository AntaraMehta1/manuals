# Merge, join and concatenate

## Reference

- https://pandas.pydata.org/pandas-docs/stable/merging.html

## Concatenation

~~~~
dfiles = glob.glob(  './data/*.dat' )
df_list = []

for f in dfiles:
    df_temp = pd.read_csv(f, delim_whitespace=True)
    df_list.append( df_temp )

df = pd.concat(df_list)
~~~~


## Merge

Syntax:

~~~~
pd.merge(left, right, how='inner', on=None, left_on=None, right_on=None,
         left_index=False, right_index=False, sort=True,
         suffixes=('_x', '_y'), copy=True, indicator=False,
         validate=None)
~~~~


`how`:

| Merge method | SQL Join Name    |           Description                       |
| ------------ | ---------------- | ------------------------------------------- | 
|     left     | LEFT OUTER JOIN  | Use keys from left frame only               |
|     right    | RIGHT OUTER JOIN | Use keys from right frame only              |
|     outer    | FULL OUTER JOIN  | Use union of keys from both frames          |
|     inner    | INNER JOIN       | Use intersection of keys from both frames   |

### How to merge a list of dataframes

~~~~
import functools
df = functools.reduce(lambda left,right: pd.merge(left,right,on=['shat', 'f', 'k_hzz', 'k_hqq'], how='inner'), dfs)
~~~~

