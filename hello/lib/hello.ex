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
end
