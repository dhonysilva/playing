defmodule Matching do
  def data_name do
    data = %{name: "Howard", age: 35}

    case data do
      _other -> "Uhh... what's that?"
      %{name: "Howard"} -> "Yes sir Mr. Admin"
      %{name: name} -> "Greetings #{name}!"
      %{age: age} -> "I don't know who you are, but you're #{inspect(age)} years old!"
    end
  end

  def deeper_data do
    data = %{
      important_flag: true,
      level_1: %{
        other: "stuff",
        level_2: %{
          value: 123,
          more: "stuff"
        }
      }
    }

    case data do
      %{important_flag: false} -> {:ok, 0}
      %{important_flag: true, level_1: %{level_2: %{value: value}}} -> {:ok, value}
      _other -> {:error, "Invalid data"}
    end
  end
end
