defmodule Greeter do
  def greet(:male, name), do: IO.puts "Hello, Mr. #{name}"
  def greet(:female, name), do: IO.puts "Hello, Mrs. #{name}"
  def greet(_, name), do: IO.puts "Hello, #{name}"
end
