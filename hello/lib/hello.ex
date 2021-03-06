defmodule Hello do
  @moduledoc """
  Hello world application.
  """

  @doc """
  Hello world.

  ## Parameters

    - name: String that represents the name of the person.

  ## Examples

      iex> Hello.hello
      "Hello world!"

      iex> Hello.hello("Mark")
      "Hello, Mark!"

  """
  @spec hello() :: String.t()
  def hello do
    "Hello world!"
  end
  @spec hello(String.t()) :: String.t()
  def hello(name) do
    "Hello, #{name}!"
  end

  def factorial(0), do: 1
  def factorial(n) when n > 0 do
    n * factorial(n - 1)
  end

  def fib(0), do: 1
  def fib(1), do: 1
  def fib(n) when n > 1 do
    fib(n - 1) + fib(n - 2)
  end
end
