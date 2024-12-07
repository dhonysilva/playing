defmodule Testing do
  def do_struff do
    # do stuff that can't fail or any erros are handled
    :ok
  end

  # web_params = %{"name" => "John", "email" => "john@example.com"}

  def do_work(%{"email" => email} = _customer_params) do
    IO.inspect(email)
    # IO.inspect(params)
    "Send an email to #{email}}"
  end

  def to_string(value) when is_binary(value) do
    value
  end

  def to_string(value) when is_integer(value) do
    Integer.to_string(value)
  end

  def to_string(value) when is_atom(value) do
    Atom.to_string(value)
  end

  def to_string(value) when is_float(value) do
    Float.to_string(value)
  end
end
