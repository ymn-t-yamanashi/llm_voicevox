defmodule Dify do
  @moduledoc """
  Documentation for `Dify`.
  """
  #Dify.llm("車は速い")
  def llm(str, id) do
   api =  %{"1" =>  "app-hbwsnSNeAaaMXi6UEDvYI2uP", "2" => "app-KrVNFLmTjBZoPehsN6njTMcU"}

    headers = [
      "Content-Type": "application/json",
      Authorization: "Bearer #{Map.get(api, id)}"
    ]

    json = """
    {
      "inputs": {"in": "#{str}"},
      "response_mode": "blocking",
      "user": "abc-123"
    }
    """

    "http://localhost:8001/v1/workflows/run"
    |> Req.post!(headers: headers, body: json, connect_options: [timeout: 1_000_000])
    |> Map.get(:body)
    |> Map.get("data", %{outputs: %{text: "ほげ"}})
    |> Map.get("outputs")
    |> Map.get("text")
    |> String.split("。")
    |> List.first()

  end
end
