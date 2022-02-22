defmodule Dictionary.Runtime.Server do

  alias Dictionary.Impl.WordList

  use Agent

  @type t :: pid

  @me __MODULE__

  def start_link(_) do
    Agent.start_link(&WordList.word_list/0, name: @me)
  end

  def random_word do
    Agent.get(@me, &WordList.random_word/1)
  end
end