defmodule LlmVoicevox do
  @moduledoc """
  Documentation for `LlmVoicevox`.
  """

  @doc """

  """
  def main do
    Speak.speak("こんにちは、ずんだもんです")
    :world
    |> IO.puts()
  end
end
