defmodule StatefulAgent.WordList do
  use Agent

  @me __MODULE__

  def start_link(_args) do
    Agent.start_link(&word_list/0, name: @me)
  end

  def random_word() do
    Agent.get(@me, &Enum.random/1)
  end

  def count do
    Agent.get(@me, &Enum.count/1)
  end


  def add_word(word) do
    Agent.update(__MODULE__, fn value -> value ++ [word] end)
  end

  def list() do
    Agent.get(__MODULE__, fn state -> state end)
  end

  defp word_list() do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end

end