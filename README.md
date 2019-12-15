# elixir-test-project

**Let's learn some Elixir. Coding along Stephen Grider's Elixir course + some own attempts.**

## Prerequisites
Install Elixir. For macOS:
```
brew install elixir
```

## How to run unit tests
```
mix test
```

## How to run application

```
iex -S mix

# Create a card deck
Cards.create_deck

# Generate an identicon with the seed "juha"
Identicon.main("juha")
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `cards` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cards, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/cards](https://hexdocs.pm/cards).

