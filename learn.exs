# Anonymous functions
add = fn(a, b) ->
  a + b
end

hello = add
IO.puts add.(1, 2)
IO.puts hello.(3, 4)

# Modules
defmodule Math do
  @moduledoc """
  That is a module that has a submodule
  """
  
  defmodule Basic do

    @doc """
    Doc written in markdown

    ## Example

        add(2, 5)
        7
    """
    def add(a, b) do
      add_private(a, b)
    end

    defp add_private(a, b) do
      a + b
    end

    def subtract(a, b) do
      a - b
    end

    def divide(a, b) do
      a / b
    end
  end
end

IO.puts Math.Basic.add(5, 6)
IO.puts Math.Basic.subtract(5, 6)
IO.puts Math.Basic.divide(10, 5)

## Module Aliasing and Importing
defmodule MathAlias do
  alias Math.Basic
  def add(a, b) do
    Basic.add(a, b)
  end

  alias Math.Basic, as: M
  def add2(a) do
    M.add(a, 2)
  end

  import Math.Basic, only: [subtract: 2]
  def sub(a, b) do
    subtract(a, b)
  end

  defdelegate divide(a, b), to: Math.Basic, as: :div
end

IO.puts MathAlias.add(7, 8)
IO.puts MathAlias.add2(9)
IO.puts MathAlias.sub(9, 10)
IO.puts MathAlias.sub(10, 2)

# Strucs
defmodule User do
  # defining attributes and default values
  defstruct name: nil, email: nil
end

# %User{}
# %User{name: "Muriel"}
