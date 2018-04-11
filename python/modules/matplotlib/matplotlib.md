# Matplotlib commands

## Basics

Import matplotlib

General:

~~~~
import matplotlib.pyplot as plt
~~~~

For contours:

~~~~
from matplitlib.mlab import griddata
import matplotlib.cm as cm
~~~~

Switch backend to pdf

~~~~
plt.switch_backend('PDF')
~~~~

Save figure

~~~~
plt.savefig( 'fig.pdf' )
~~~~

## Figure options

Create a figure with a specific size and dpi:

~~~~
plt.figure(figsize=(20,10), dpi=80)
~~~~


### Margins

Adjust margins:

~~~~
f.subplots_adjust(left=0.1, right=0.9, top=0.9, bottom=0.1)
~~~~

Tight layout:

~~~~
f.tight_layout()
~~~~

## Axis options

### Axis label

Setting labels:

~~~~
ax.set_xlabel( r'$\cos(\beta - \alpha)$' )
ax.set_ylabel( r'$\sigma$ [pb]' )
~~~~

Align axis label to the right:

~~~~
ax.set_xlabel( r'$\cos(\beta - \alpha)$', horizontalalignment='right', x=1.0)
~~~~

Color labels:

~~~~
ax.xaxis.label.set_color('red')
~~~~

### Setting axis ticks and labels

~~~~
fix, ax = plt.subplots(nrows=1, ncols=1, sharex=True )
ax.set_xticks(      np.linspace(0, 1, 5) )
ax.set_xticklabels( np.linspace(0, 1, 5) )
ax.set_yticks(      np.linspace(0, 1, 5) )
ax.set_yticklabels( np.linspace(0, 1, 5) )
~~~~

### Axis ranges

~~~~
ax.set_xlim(0.0, 1.0)
ax.set_ylim(0.0, 1.0)
~~~~

### Plots with two different scales

~~~~
fig, ax1 = plt.subplots()
ax1.plot(t, s1, 'b-')
ax2 = ax1.twinx()
ax2.plot(t, s2, 'r.')
~~~~


## Legend

**Associated notebook:** [customizing_legends.ipynb](./notebooks/customizing_legends.ipynb)

Sometimes the legend doesn't appear within the `jupyter` environment.
Try the following so that it is displayed:

~~~~
f,a = plt.subplots()
a.plot(x,y, label='y')
handles, labels = a.get_legend_handles_labels()
a.legend(handles, labels)
~~~~

If you wish to place the legend outside the plot, call with this options:

~~~~
plt.legend(bbox_to_anchor=(1, 1), loc='upper left', ncol=1)
~~~~

**Location:**

| Location string | Location code |
| ------------ | --- |
| best         |  0  |
| upper right  |  1  |
| upper left   |  2  |
| lower left   |  3  |
| lower right  |  4  |
| right        |  5  |
| center left  |  6  | 
| center right |  7  |
| lower center |  8  |
| upper center |  9  | 
| center       | 10  |


Retrieve the legend from the axis:

~~~~
legend = a1.get_legend()
~~~~

then set its position:

~~~~
legend.set_bbox_to_anchor((1.0, 0.5))
~~~~

## Subplots

**Make a 3x2 grid of subfplots:**

~~~~
fig, axes = plt.subplots(ncols=3, nrows=2)
fig.set_size_inches(10,10)
~~~~

**Specify the height ratio of the subplots:**

~~~~
f,(a1,a2) = plt.subplots(nrows=2, gridspec_kw={'height_ratios':[2, 1]})
~~~~

## Spines

**Set color of spines:**

~~~~
a.spines['left'].set_color('C0')
~~~~

### Grid

~~~~
ax1 = plt.subplot2grid((6,1), (0,0), rowspan=5, colspan=1)
ax2 = plt.subplot2grid((6,1), (5,0), rowspan=1, colspan=1, sharex=ax1)
~~~~

### Adjusting subplot size and spacing between subplots

~~~~
f, a = plt.subplots(nrows=3, ncols=2)
f.tight_layout()
~~~~

or 

~~~~
f.subplots_adjust(wspace=0.2, hspace=0.2)
~~~~

## Colorbar


**Get colorbar:**

~~~~
sc = a.scatter(x,y, c=z, cmap='Blues', rasterized=True, s=3, vmin=-5.0, vmax=-1.0)
cb = plt.colorbar(sc, ticks=tick_lock)
~~~~

**Colorbar axis label:**

~~~~
sc    = a.scatter(x,y, c=z, cmap='Blues', rasterized=True, s=3, vmin=-5.0, vmax=-1.0)
cb    = plt.colorbar(sc, ticks=tick_lock)
cb_ax = cb.ax
cb_ax.set_ylabel('colorbar label') 
~~~~

**Logarithmic colorbar:**

~~~~
c = a.pcolor(X, Y, gHhh2, cmap='viridis', norm=colors.LogNorm(vmin=1e10, vmax=gHhh2.max()))
~~~~

Normalizations:
- `colors.LogNorm()`: logarithmic
- `colors.SymLogNorm()`: symmetric logarithmic
- `colors.PowerNorm()`: power-law