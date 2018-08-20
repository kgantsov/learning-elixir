defmodule RockScissorsPaper.CLI do
  def main(_args \\ []) do
    move()
  end

  def move() do
    player = get_player_move()

    if Enum.member?([:Rock, :Paper, :Scisors], player) do
      ai = RockScissorsPaper.ai_make_move()

      winner = RockScissorsPaper.get_winner(player, ai)
      |> Atom.to_string()
      |> String.capitalize()

      IO.puts("AI's move is: #{ai}")
      IO.puts("Winner is: #{winner}")
    else
      IO.puts("You should type either: Rock, Paper or Scissors")
      move()
    end
  end

  def get_player_move() do
    IO.gets("Rock, Paper, Scissors?\nYour move is: ")
    |> String.capitalize()
    |> String.trim()
    |> String.to_atom()
  end
end
