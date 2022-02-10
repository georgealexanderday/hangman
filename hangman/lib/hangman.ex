defmodule Hangman do

  alias Hangman.Type
  alias Hangman.Impl.Game

  @spec new_game() :: Type.game
  defdelegate new_game, to: Game

  @spec make_move(Type.game, String.t) :: {Type.game, Type.tally}
  defdelegate make_move(game, guess), to: Game

  @spec tally(Type.game) :: Type.tally
  defdelegate tally(game), to: Game
end
