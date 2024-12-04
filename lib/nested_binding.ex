defmodule NestedBinding do
  params = %{
    "customer" => %{
      "id" => 123,
      "name" => "Willy Wonka Chocolates",
      "bonuses" => %{
        "employees" => %{
          "Oompa 1" => 1_000,
          "Oompa 2" => 2_000,
          "Hillary" => 1_500,
          "Oompa 3" => 500
        },
        "total" => 5_000
      }
    }
  }

  def award_bonuses(
        %{"customer" => %{"bonuses" => %{"total" => bonus_total} = bonuses}} = _params
      ) do
    IO.inspect(bonus_total, label: "Total to validate")
    IO.inspect(bonuses, label: "Bonuses")
    :ok
  end
end
