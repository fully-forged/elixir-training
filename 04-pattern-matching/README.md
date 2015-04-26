# Pattern matching and recursion

Elixir (and Erlang) don't have assignments. Instead they use pattern matching.

The program asks: what can I do **on the left** to match what's **on the right**?

```
iex(1)> x = 1 # x gets bound to 1
1
iex(2)> 1 = x # x is already bound to 1, so match is met
1
```

With lists (more on lists later):

```
iex(3)> x = [1,2,3]
[1,2,3]

iex(4)> [first, 2, 3] = [1,2,3]
[1,2,3]
iex(5)> first
1

iex(6)> [head | tail] = [1,2,3]
[1,2,3]
iex(7)> head
1
iex(8)> tail
[2,3]

iex(9)> [[a] | tail] = [[1], [2,3,4], [5,6]]
[[1], [2, 3, 4], [5, 6]]
iex(10)> a
1
```

Pattern matching works in fuctions:

```
defmodule Lunch do
  def eat("cake"), do: "Wooh!"
  def eat(food), do: "Boring, I don't like #{food}"
end
```

We can match against a literal value like `cake`.

We can also match against structures:

```
defmodule MyMath do
  def sum([]), do: 0
  def sum([head|tail]) do
    head + sum(tail)
  end
end
```

This is, however, ineffective recursion, as we have to compute all results upfront.

We have to use **tail recursion**.

```
defmodule MyMath do
  def tail_sum(list), do: do_tail_sum(list, 0)

  defp do_tail_sum([], total), do: total
  defp do_tail_sum([head|tail], total) do
    do_tail_sum(tail, head + total)
  end
end
```

Every time the function recurses, it carries over the tail and the total, nothing more. Memory usage is constant over time.

Exercise: let's try to implement `reverse/1` and `map/2`
