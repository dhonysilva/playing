defmodule Matching do
  def data_name do
    data = %{name: "Howard", age: 35}

    case data do
      %{name: "Howard"} -> "Yes sir Mr. Admin"
      %{name: name} -> "Greetings #{name}!"
      %{age: age} -> "I don't know who you are, but you're #{inspect(age)} years old!"
      _other -> "Uhh... what's that?"
    end
  end
end
