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

  test "User.first_name should return empty string when the name attribute is nil" do
    user = %User{}
    assert User.first_name(user) == ""
  end

  test "User.first_name should return empty string when the name attribute is an empty string" do
    user = %User{name: ""}
    assert User.first_name(user) == ""
  end

  test "User.first_name should return the name when the name attribute has only the first name" do
    user = %User{name: "John"}
    assert User.first_name(user) == "John"
  end

  test "User.first_name should return the first name when the name attribute has a full name" do
    user = %User{name: "John Mac Doe"}
    assert User.first_name(user) == "John"
  end
end
