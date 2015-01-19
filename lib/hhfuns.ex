defmodule HHFuns do
	def one(), do: fn -> 1 end
	def two(), do: fn -> 2 end
	def add(x,y), do: x.() + y.()

	def increment([]), do: []
	def increment([h|t]), do: [h+1|increment(t)]

	def decrement([]), do: []
	def decrement([h|t]), do: [h-1|decrement(t)]

	def map(_, []), do: []
	def map(f, [h|t]), do: [f.(h)|map(f,t)]

	def incr(x), do: x + 1
	def decr(x), do: x - 1

	def a() do
	   secret = "pony"
	   fn -> secret end
	end
	def b(f) do
	   "a/0's password is #{f.()}"
	end

	def even(l), do: Enum.reverse(_even(l, []))
	defp _even([], acc), do: acc
	defp _even([h|t], acc) when rem(h, 2) == 0 do
		_even(t, [h|acc])
	end
	defp _even([_|t], acc), do: _even(t, acc)

	def old_men(l), do: Enum.reverse(_old_men(l, []))
	defp _old_men([], acc), do: acc
	defp _old_men([person = {:male, age}|people], acc) when age > 60 do
		_old_men(people, [person|acc])
	end
	defp _old_men([_|people], acc), do: _old_men(people, acc)

	def filter(pred, l), do: Enum.reverse(_filter(pred, Enum.into(l, []), []))
	defp _filter(_, [], acc), do: acc
	defp _filter(pred, [h|t], acc) do
		case pred.(h) do
			true ->
				_filter(pred, t, [h|acc])
			false ->
				_filter(pred, t, acc)
		end
	end

	def fold(_, start, []), do: start
	def fold(f, start, [h|t]), do: fold(f, f.(h, start), t)
end
