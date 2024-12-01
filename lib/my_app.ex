defmodule MyApp do
  def public_do_work(input) do
    private_work(input)
  end

  defp private_work(_input) do
    IO.puts("working!")
  end
end
