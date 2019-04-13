defmodule Identicon do
  @moduledoc """
  Documentation for Identicon.
  """
  def main(input) do
    input
    |> hash_input
    |> pick_color
    |> build_grid
  end

  def build_grid(image) do
    %Identicon.Image{hex: hex} = image
    hex
    |> Enum.chunk_every(3)
    |> mirror_row
  end

  @doc """
  mirror_row

  ## Examples

      iex> Identicon.mirror_row([1, 2, 3])
      [1, 2, 3, 2, 1]
  """
  def mirror_row(row) do
    [first, second, _tail ] = row
    row ++ [second, first]
  end

  def pick_color(image) do
    %Identicon.Image{hex: [r, g, b | _tail]} = image
    %Identicon.Image{image | color: {r, g, b}}
  end

  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list
    %Identicon.Image{hex: hex}
  end

end
