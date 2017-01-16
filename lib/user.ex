defmodule User do
  import String, only: [split: 1]
  import List, only: [first: 1, last: 1]

  defstruct name: nil, email: nil

  def first_name(user) do
    case user.name do
      nil -> ""
      "" -> ""
      name -> first(split(name))
    end
  end

  def last_name(user) do
    user.name
    |> split
    |> last
  end
end
