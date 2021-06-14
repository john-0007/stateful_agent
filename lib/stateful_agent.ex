defmodule StatefulAgent do
  
  defdelegate word_list(), to: __MODULE__.WordList, as: :list

  defdelegate word_count(), to: __MODULE__.WordList, as: :count

  defdelegate add_word_to_list(word), to: __MODULE__.WordList, as: :add_word

  defdelegate get_random_word(), to: __MODULE__.WordList, as: :random_word

end


