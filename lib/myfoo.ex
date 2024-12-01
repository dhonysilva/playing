defmodule Myfoo do
  def foo do
    "Hello!"
  end

  def greeting(name) do
    "Hello #{name}!"
  end

  def greeting(name, extra_greeting) do
    "Greetings #{name}! #{extra_greeting}"
  end

  def process_name(name, fun) do
    fun.(name)
  end
end
