defmodule RockScissorsPaperTest do
  use ExUnit.Case
  doctest RockScissorsPaper

  test "greets the world" do
    assert RockScissorsPaper.hello() == :world
  end

  test "greets the world" do
    assert RockScissorsPaper.hello() == :world
    # for p1 <- [:paper, :rock, :scisors], p2 <- [:paper, :rock, :scisors], into: %{} do {"#{p1} = #{p2}", RockScissorsPaper.get_winner(p1, p2)} end
  end
end
