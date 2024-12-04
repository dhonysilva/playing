defmodule Testing do
  def do_struff do
    # do stuff that can't fail or any erros are handled
    :ok
  end

  # web_params = %{"name" => "John", "email" => "john@example.com"}

  def do_work(%{"email" => email} = params) do
    IO.inspect(email)
    IO.inspect(params)
    "Send an email to #{email} addressed to #{params["name"]}"
  end
end
