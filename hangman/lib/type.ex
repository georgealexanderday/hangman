defmodule Hangman.Type do
  alias Hangman.Impl.Game
  @opaque game  :: Game.t
  @type   state :: :initializing | :won | :lost | :good_guess | :bad_guess | :already_used
  @type   tally :: %{
                      turns_left: integer(),
                      game_state: state,
                      letters:    list(String.t()),
                      used:       list(String.t())
                    }

end
