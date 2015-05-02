Code.load_file("my_enumerable.exs")

ExUnit.start

defmodule MyEnumerableTest do
  use ExUnit.Case
  alias MyEnumerable, as: E

  test "can reverse a list" do
    assert E.reverse([1,2,3]) == [3,2,1]
  end

  test "can map over a list" do
    assert E.map(["a", "b", "c"], &String.upcase/1) == ["A", "B", "C"]
  end

  test "can reduce over a list" do
    assert E.reduce([1,2,3], fn (x, acc) -> x + acc end) == 6
  end

  test "can reduce with initial" do
    assert E.reduce([1,2,3], fn (x, acc) -> x + acc end, 4) == 10
  end
end
