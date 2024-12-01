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

  def do_nothing do
  end
end
