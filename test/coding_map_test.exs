#
# Testing some basic Elixir features
#
defmodule CodingMapTest do
  use ExUnit.Case

  test "map" do
    colors = %{red: "red", blue: "blue"}
    assert "red" == colors.red
  end

  test "replacing a value in a map is not allowed" do
    _colors = %{red: "red", blue: "blue"}

    #Testing compile-time errors is not possible
    #assert_raise CompileError, "no", fn -> colors.red = "green" end
  end

  test "replacing a value using Map.put works" do
    colors = %{red: "red", blue: "blue"}

    # Not purely functional since replacing colors is possible
    colors = Map.put(colors, :red, "green")
    assert "green" == colors.red
    assert "blue" == colors.blue
  end

  test "replacing a value using syntax similar to JS spread works" do
    colors = %{red: "red", blue: "blue"}
    colors = %{colors | red: "green"}
    assert "green" == colors.red
    assert "blue" == colors.blue
  end

  test "adding a new value" do
    colors = %{red: "red", blue: "blue"}
    colors = Map.put_new(colors, :green, "vihreä")
    assert "vihreä" == colors.green
  end

  test "array-map-tuple" do
    colors = [{:red, "red"}, {:blue, "blue"}]
    assert "blue" == colors[:blue]
  end

end
