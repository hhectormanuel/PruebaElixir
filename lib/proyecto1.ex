defmodule Proyecto1 do
  @moduledoc """
  Documentation for `Proyecto1`.
  
  This is proyect1 which is a proyect built to learn
  """

  @doc """
  Hello world.

  ## Examples

      iex> Proyecto1.hello()
      :world

  """
  defmodule Empleado do
    defstruct [:nombre, :posicion, :sueldo]
  end
  @spec hello() :: atom()
  def hello do
    :world
  end

end
