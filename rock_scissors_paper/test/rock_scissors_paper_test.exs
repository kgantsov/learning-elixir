defmodule RockScissorsPaperTest do
  use ExUnit.Case
  doctest RockScissorsPaper

  test "greets the world" do
    assert RockScissorsPaper.hello() == :world
  end

  test "get winner" do
    assert RockScissorsPaper.get_winner(:Paper, :Rock) == :you
    assert RockScissorsPaper.get_winner(:Rock, :Scisors) == :you
    assert RockScissorsPaper.get_winner(:Scisors, :Paper) == :you

    assert RockScissorsPaper.get_winner(:Rock, :Paper) == :ai
    assert RockScissorsPaper.get_winner(:Scisors, :Rock) == :ai
    assert RockScissorsPaper.get_winner(:Paper, :Scisors) == :ai

    assert RockScissorsPaper.get_winner(:Rock, :Rock) == :tie
    assert RockScissorsPaper.get_winner(:Scisors, :Scisors) == :tie
    assert RockScissorsPaper.get_winner(:Paper, :Paper) == :tie
    # for p1 <- [:paper, :rock, :scisors], p2 <- [:paper, :rock, :scisors], into: %{} do {"#{p1} = #{p2}", RockScissorsPaper.get_winner(p1, p2)} end
  end
end
