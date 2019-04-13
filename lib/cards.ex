defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      "Hello Elixir!"

  """
  def hello do
    "Hello Elixir!"
  end

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end

  end

  def shuffle(deck) do
    # Elixir standard library Enum does a lot of stuff related to lists
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def pattern_matching_test do
    ["red", color] = ["red", "green"]

    # implicit return
    color
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, _reason} -> "Cannot load file"
    end
  end

  def load_legacy(filename) do
    { status, binary } = File.read(filename)

    # :ok and :error are atoms
    case status do
      :ok -> :erlang.binary_to_term(binary)
      :error -> "Cannot load file"
    end
  end

  def create_hand(hand_size) do
    # Use Elixir's pipe operator to pass data from a function to the next
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end

end
