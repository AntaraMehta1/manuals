# `inline`

Inline is more like static or extern than a directive telling the compiler to
inline your functions. extern, static, inline are linkage directives, used
almost exclusively by the linker, not the compiler.

It is said that inline hints to the compiler that you think the function should
be inlined. That may have been true in 1998, but a decade later the compiler
needs no such hints. Not to mention humans are usually wrong when it comes to
optimizing code, so most compilers flat out ignore the 'hint'.

- static the variable/function name cannot be used in other compilation units.
Linker needs to make sure it doesn't accidentally use a statically defined
variable/function from another compilation unit.

- extern use this variable/function name in this compilation unit but don't
complain if it isn't defined. The linker will sort it out and make sure all the
code that tried to use some extern symbol has its address.

- inline this function will be defined in multiple compilation units, don't worry
about it. The linker needs to make sure all compilation units use a single
instance of the variable/function.
