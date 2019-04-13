#
# Testing some basic Elixir features
#
defmodule IdenticonTest do
  use ExUnit.Case

  test "hash" do
    hash = Identicon.main("juha")
    assert hash == [35, 172, 28, 32, 242, 152, 214, 95, 128, 18, 251, 74, 24, 21, 235,
    65]
  end
end
