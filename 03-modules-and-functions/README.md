# Modules and functions

## Anonymous functions

Most of Elixir code is defined with functions.

Let's open IEx

```
iex(1)> double = fn (n) -> 2 * n end
iex(2)> double.(3)
6
```

Functions can be passed around.

```
iex(3)> doubledouble = fn (n) -> double.(double.(n)) end
iex(4)> doubledouble.(5)
20
```

## Modules and named functions

You can group functions into modules. Let's create a file called `hello.ex`

```
defmodule Hello do
  def hello do
    "hello world"
  end
end
```

Let's compile it in IEx:

```
iex(1)> c("hello.ex")
[Hello]
iex(2)> Hello.hello
"hello world"
```
