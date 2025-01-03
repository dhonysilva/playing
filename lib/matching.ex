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

  def find_user do
    user = %{id: 1, name: "John", email: "john@example.com", active: true}
    function_call_result = {:ok, user}

    case function_call_result do
      {:ok, %{email: email}} -> "Sending email to: #{email}"
      _other -> "Nothing to do"
    end
  end

  # Maps
  def exercise_one do
    %{amount: value} = %{name: "Your Customer, Inc", amount: 142}
    value
  end

  def exercise_two do
    %{"name" => name} = %{"name" => "Your Customer, Inc", "amount" => 142}
    name
  end

  def exercise_three do
    %{"name" => _name, "amount" => amount} = %{"name" => "Your Customer, Inc", "amount" => 142}
    amount
  end

  # Tuples
  def exercise_tuple_one do
    {:ok, answer} = {:ok, 1500}
    answer
  end

  def exercise_tuple_two do
    {_year, month, _day} = {2020, 2, 14}
    month
  end

  # Lists
  def exercise_list_one do
    [head | tail] = [1, 2, 3]
  end

  def exercise_list_three do
    [a, b | _rest] = [1, 2, 3]
  end
end
