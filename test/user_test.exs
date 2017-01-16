defmodule UserTest do
  use ExUnit.Case
  doctest User

  test "User can be created without attributes" do
    %User{}
  end

  test "User name attribute default value is nil" do
    user = %User{}
    assert user.name == nil
  end

  test "User email attribute default value is nil" do
    user = %User{}
    assert user.email == nil
  end
end
