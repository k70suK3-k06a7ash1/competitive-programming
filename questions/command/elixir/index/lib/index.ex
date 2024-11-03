defmodule Index do
  def command(s) do
    cond do
      Enum.all?(s, &Helper.isPerfect/1) ->
        Judge.perfect()

      Enum.all?(s, fn e -> Helper.isPerfect(e) or Helper.isGreat(e) end) ->
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
  @spec all() :: [t]

  def is_equal_perfect(s) do
    # Command モジュールの @perfect を参照
    s == Atom.to_string(@perfect)
  end

  def is_equal_great(s) do
    # Command モジュールの @perfect を参照
    s == Atom.to_string(@perfect)
  end
end

defmodule Helper do
  def isPerfect(s) do
    # ここで "perfect" という文字列をチェック
    Command.is_equal_perfect(s)
  end

  def isGreat(s) do
    # ここで "great" という文字列をチェック
    Command.is_equal_great(s)
  end
end

defmodule Judge do
  @perfect "All Perfect"
  @full_combo "Full Combo"
  @failed "Failed"

  @spec perfect() :: String.t()
  def perfect do
    @perfect
  end

  @spec full_combo() :: String.t()
  def full_combo do
    @full_combo
  end

  @spec failed() :: String.t()
  def failed do
    @failed
  end
end
