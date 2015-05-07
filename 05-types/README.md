# Types

Elixir provides a limited number of primitive types. They are also called terms
(coming from Erlang).

## Strings

They are binary strings encoded in UTF-8 (the whole database is pulled in and
processed at compile time). Use double quotes.

```
iex(1)> "foo"
```

## Chars

It's also possible to use single characters (or lists of them).
This is how Erlang handles strings.

```
iex(1)> 'foo'
'foo'

iex(2)> [123, 125]
'{}'
```

Note that `'foo'` is different than `"foo"`.

## Atoms

These are the equivalent of symbols in Ruby (name = value).

Some non obvious atoms:

- module names
- true, false

## Numbers

Integers and floats.

## Lists

They look like arrays, but implemented as linked lists. This means that prepending is cheap.

```
[1,2,3]
```

## Tuples

Lists in contiguous memory. Size, index lookup is cheap. Adding or removing is expensive.

{:foo, 1, 2, }

## Keyword lists

Also called proplists in Erlang.

They are lists of tuples:

```
[{a,1}, {b,2}]
```

Elixir supports a streamlined notation for the same data (provided that keys are atoms):

```
[a: 1, b: 2]
```

Mostly used as options (they are lists, so they have specific performance features).

## Maps

Associative data type.

```
%{a: 1, b: 2}
%{"foo" => "bar", "bar" => "baz"}
```

When keys are atoms, it's possible to use the dot notation for lookup.

```
iex(1)> data = %{a: 1, b: 2}
%{a: 1, b: 2}
iex(2)> data.a
1
```

Otherwise, it's possible to use `Map.get/2`:

```
iex(1)> data = %{"foo" => "bar"}
%{"foo" => "bar"}
iex(2)> Map.get(data, "foo")
"bar"
```
