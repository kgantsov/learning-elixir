defmodule RockScissorsPaper do
  @moduledoc """
  Documentation for RockScissorsPaper.
  """

  @doc """
  RockScissorsPaper class.

  ## Examples

      iex> RockScissorsPaper.get_winner(:Paper, :Rock)
      :you

  """
  def get_winner(player, ai) when player == ai do
    :tie
  end
  def get_winner(:Paper, :Rock) do
    :you
  end
  def get_winner(:Rock, :Scisors) do
    :you
  end
  def get_winner(:Scisors, :Paper) do
    :you
  end
  def get_winner(_player, _ai) do
    :ai
  end

  def ai_make_move do
    Enum.random([:Rock, :Paper, :Scisors])
  end
end
