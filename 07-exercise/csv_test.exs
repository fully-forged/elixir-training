Code.load_file("csv.exs")

ExUnit.start

defmodule CsvTest do
  use ExUnit.Case

  test "can parse a csv string" do
    assert Csv.parse("foo,bar,baz") == ["foo", "bar", "baz"]
  end

  test "can parse a string with headers" do
    test_string = """
    band,title,year
    Dream Theater,Awake,1994
    Rush,2112,1976
    """

    assert Csv.parse(test_string, headers: true) == [
      %{"band" => "Dream Theater", "title" => "Awake", "year" => "1994"},
      %{"band" => "Rush", "title" => "2112", "year" => "1976"}
    ]
  end
end
