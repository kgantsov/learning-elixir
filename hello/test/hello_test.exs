defmodule HelloTest do
  use ExUnit.Case
  doctest Hello

  test "greets the world" do
    assert Hello.hello() == "Hello world!"
  end

  test "greets Mark" do
    assert Hello.hello("Mark") == "Hello, Mark!"
  end

  test "greets Mike" do
    assert Hello.hello("Mike") == "Hello, Mike!"
  end

  test "factorial" do
    assert Hello.factorial(0) == 1
    assert Hello.factorial(1) == 1
    assert Hello.factorial(2) == 2
    assert Hello.factorial(3) == 6
    assert Hello.factorial(4) == 24
    assert Hello.factorial(5) == 120
    assert Hello.factorial(6) == 720
    assert Hello.factorial(7) == 5040
    assert Hello.factorial(8) == 40320
    assert Hello.factorial(9) == 362880
    assert Hello.factorial(10) == 3628800
    assert Hello.factorial(11) == 39916800
    assert Hello.factorial(12) == 479001600
    assert Hello.factorial(13) == 6227020800
    assert Hello.factorial(14) == 87178291200
    assert Hello.factorial(15) == 1307674368000
  end

  test "fibonacci" do
    assert Hello.fib(0) == 1
    assert Hello.fib(1) == 1
    assert Hello.fib(2) == 2
    assert Hello.fib(3) == 3
    assert Hello.fib(4) == 5
    assert Hello.fib(5) == 8
    assert Hello.fib(6) == 13
    assert Hello.fib(7) == 21
    assert Hello.fib(8) == 34
    assert Hello.fib(9) == 55
    assert Hello.fib(10) == 89
    assert Hello.fib(11) == 144
    assert Hello.fib(12) == 233
    assert Hello.fib(13) == 377
    assert Hello.fib(14) == 610
    assert Hello.fib(15) == 987
  end
end
