defmodule Hello.CLI do
  def main(args \\ []) do
    args
    |> parse_args
    |> response
    |> IO.puts()
  end

  def parse_args(args) do
    {opts, word, _} =
      args
      |> OptionParser.parse(switches: [name: :string])

    {opts, List.to_string(word)}
  end

  defp response({_opts, word}) do
    if String.length(word) > 0, do: Hello.hello(word), else: Hello.hello()
  end
end
