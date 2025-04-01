defmodule LlmVoicevox do
  @moduledoc """
  Documentation for `LlmVoicevox`.
  """

  @doc """

  """
  def main do
    "サボってゲーセンにいくわ"
    #|> Speak.speak("2")
    |> llm_pair()

  end

  def llm_pair(msg) do
    llm(msg, "1")
    |> llm("2")
    |> llm_pair()
  end

  def llm(msg, id) do
    Dify.llm(msg, id)
    |> IO.inspect()
    |> Speak.speak(id)
  end
end
