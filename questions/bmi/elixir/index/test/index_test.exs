defmodule IndexTest do
  use ExUnit.Case
  doctest Index

  test "BMI" do
    assert Index.calc(170, 55) == 19
  end

  test "Rate: A" do
    assert Index.calc(170, 55) |> Index.rate() == "A"
  end

  test "Rate: B" do
    assert Index.calc(160, 60) |> Index.rate() == "B"
  end

  test "Rate: C" do
    assert Index.calc(160, 80) |> Index.rate() == "C"
  end
end
