# `pyq`

**References:**
- [pyq kx][pyq-kx]
- [pyq user guide][pyq-user-guide]
- [pyq github][pyq-github]

> `PyQ` brings the `Python` programming language to the `kdb+` database. It allows developers to integrate
> `Python` and `q` code seamlessly in one application. This is achieved by bringing the `Python` and `q`
> interpreters into the same process, so that code written in either of the languages operates on the
> same data.
 
> In `PyQ`, Python and `q` objects live in the same memory space and share the same data.

`pyq` is primarily focused on accessing `kdb+` data from `python`


## Install

### pip

~~~~
pip install pyq
~~~~

### anaconda

~~~~
conda install -c enlnt pyq
~~~~

---------------------------------------------------------------------------------------------------

## Interactive python

Switch to `q` prompt:

~~~~
q()
~~~~

Switch back to `python` prompt:

~~~~
\
~~~~





---------------------------------------------------------------------------------------------------

[pyq-github]: https://github.com/KxSystems/pyq
[pyq-kx]: https://code.kx.com/q/interfaces/pyq/
[pyq-user-guide]: https://code.kx.com/q/interfaces/pyq/user-guide/
