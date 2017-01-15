defmodule UserTest do
  use ExUnit.Case
  doctest User

  test "User can be created without attributes" do
    %User{}
  end

  test "User.name default value is nil" do
    user = %User{}
    assert user.name == nil
  end

  test "User.email default value is nil" do
    user = %User{}
    assert user.email == nil
  end
end
