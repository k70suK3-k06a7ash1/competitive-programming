defmodule IndexTest do
  use ExUnit.Case
  doctest Index
  doctest Judge

  test "Case1" do
    assert Index.command([:perfect]) == Judge.perfect()
  end

  test "Case2" do
    assert Index.command([:perfect, :great]) == Judge.full_combo()
  end

  test "Case3" do
    assert Index.command([:perfect, :great, :good, :bad, :miss]) == Judge.failed()
  end
end
