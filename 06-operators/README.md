# Operators

Basic math operators are standard.

List operations can be done with `++` and `--`.

String concatenation can be done with `<>`.

String interpolation is the same as Ruby, i.e. `"There are #{count} users"`.

Boolean operators are `and`, `not` and `or`. Use only with booleans.

Comparisons work like Ruby, with only a few caveats:

```
1 == 1.0 # true
1 === 1.0 # floats
```

You can compare different types, the result is determined by the following:

```
number < atom < reference < functions < port < pid < tuple < maps < list < bitstring
```

In practice, I've never needed to know/use this.
