defmodule Tree do
	def empty(), do: {:node, nil}

	def insert(key, val, {:node, nil}) do
		{:node, {key, val, {:node, nil}, {:node, nil}}}
	end
	def insert(new_key, new_val, {:node, {key, val, smaller, larger}}) when new_key < key do
		{:node, {key, val, insert(new_key, new_val, smaller), larger}}
	end
	def insert(new_key, new_val, {:node, {key, val, smaller, larger}}) when new_key > key do
		{:node, {key, val, smaller, insert(new_key, new_val, larger)}}
	end
	def insert(key, val, {:node, {key, _, smaller, larger}}) do
		{:node, {key, val, smaller, larger}}
	end

	def lookup(_, {:node, nil}), do: :undefined
	def lookup(key, {:node, {key, val, _, _}}) do
		{:ok, val}
	end
	def lookup(key, {:node, {node_key, _, smaller, _}}) when key < node_key do
		lookup(key, smaller)
	end
	def lookup(key, {:node, {_, _, _, larger}}) do
		lookup(key, larger)
	end
end
