defmodule Useless do
	def add(a, b), do: a + b

	def hello(), do: IO.puts "Hello, world!"

	def greet_and_add_two(x) do
		hello
		add x, 2
	end
end
