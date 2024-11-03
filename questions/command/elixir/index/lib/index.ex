defmodule Index do
  def command(s) when is_list(s) do
    cond do
      Enum.all?(s, &Helper.is_perfect/1) ->
        Judge.perfect()

      Enum.all?(s, fn e -> Helper.is_perfect(e) or Helper.is_great(e) end) ->
        Judge.full_combo()

      true ->
        Judge.failed()
    end
  end
end

defmodule Command do
  @type t :: :perfect | :great | :good | :bad | :miss
  @perfect :perfect
  @great :great
  @good :good
  @bad :bad
  @miss :miss

  def is_equal_perfect(s) do
    s == @perfect
  end

  def is_equal_great(s) do
    s == @great
  end
end

defmodule Helper do
  def is_perfect(s) do
    Command.is_equal_perfect(s)
  end

  def is_great(s) do
    Command.is_equal_great(s)
  end
end

defmodule Judge do
  @perfect "All Perfect"
  @full_combo "Full Combo"
  @failed "Failed"

  @spec perfect() :: String.t()
  def perfect, do: @perfect

  @spec full_combo() :: String.t()
  def full_combo, do: @full_combo

  @spec failed() :: String.t()
  def failed, do: @failed
end
