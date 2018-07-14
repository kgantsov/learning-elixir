defmodule HelloTest do
  use ExUnit.Case
  doctest Hello

  test "greets the world" do
    assert Hello.hello() == "Hello world!"
  end
  test "greets Mark" do
    assert Hello.hello("Mark") == "Hello, Mark!"
  end
end
