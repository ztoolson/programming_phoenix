defmodule Playground do
  def inc(x) do
    x + 1
  end

  def dec(x), do: x - 1

end

alias Playground
IO.puts(2 |> Playground.inc |> Playground.inc |> Playground.dec)
IO.puts Playground.inc(1)
IO.puts Playground.dec(1)

