defmodule Recursive do
	def naive_fac(0), do: 1
	def naive_fac(n) when n > 0, do: n * naive_fac(n - 1)

	def tail_fac(n), do: _tail_fac(n,1)
	defp _tail_fac(0, acc), do: acc
	defp _tail_fac(n, acc), do: _tail_fac(n - 1, n*acc)

	def naive_len([]), do: 0
	def naive_len([_|t]), do: 1 + naive_len(t)

	def tail_len(arr), do: _tail_len(arr, 0)
	defp _tail_len([], acc), do: acc
	defp _tail_len([_|t], acc), do: _tail_len(t, acc + 1)

	def duplicate(0, _), do: []
	def duplicate(n, term) when n > 0 do
		[term|duplicate(n - 1, term)]
	end

	def tail_duplicate(n, term), do: _tail_duplicate(n, term, [])
	defp _tail_duplicate(0, _, list), do: list
	defp _tail_duplicate(n, term, list) do
		_tail_duplicate(n-1, term, [term|list])
	end

	def reverse([]), do: []
	def reverse([h|t]), do: reverse(t) ++ [h]

	def tail_reverse(l), do: _tail_reverse(l, [])
	defp _tail_reverse([], acc), do: acc
	defp _tail_reverse([h|t], acc), do: _tail_reverse(t, [h|acc])

	def sublist(_, 0), do: []
	def sublist([],_), do: []
	def sublist([h|t], n) when n > 0, do: [h|sublist(t, n-1)]

	def tail_sublist(l, n), do: Enum.reverse(_tail_sublist(l, n, []))
	defp _tail_sublist(_, 0, acc), do: acc
	defp _tail_sublist([], _, acc), do: acc
	defp _tail_sublist([h|t], n, acc) when n > 0 do
		_tail_sublist(t, n - 1, [h|acc])
	end

	def zip([],[]), do: []
	def zip([x|xs], [y|ys]), do: [{x,y}|zip(xs, ys)]

	def lenient_zip([],_), do: []
	def lenient_zip(_,[]), do: []
	def lenient_zip([x|xs],[y|ys]), do: [{x,y}|lenient_zip(xs,ys)]

	def tail_lenient_zip(one, two), do: Enum.reverse(_tail_lenient_zip(one, two, []))
	defp _tail_lenient_zip([],_,acc), do: acc
	defp _tail_lenient_zip(_,[],acc), do: acc
	defp _tail_lenient_zip([x|one], [y|two], acc) do
		_tail_lenient_zip(one, two, [{x,y}|acc])
	end
end
