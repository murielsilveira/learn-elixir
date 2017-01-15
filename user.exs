defmodule User do
  @moduledoc """
  User struct and functions to handle user related operations
  """
  import String, only: [split: 1]
  import List, only: [first: 1, last: 1]

  defstruct name: nil, email: nil

  @doc """
  Get user's first name

  ## Parameters

  - `user`: a User struct

  ## Examples

      user = %User{name: "John Doe"}
      User.first_name(user)
      "John"
  """
  def first_name(user) do
    user.name
    |> split
    |> first
  end

  @doc """
  Get user's last name

  ## Parameters

  - `user`: a User struct

  ## Examples

      user = %User{name: "John Doe"}
      User.last_name(user)
      "Doe"
  """
  def last_name(user) do
    user.name
    |> split
    |> last
  end
end
