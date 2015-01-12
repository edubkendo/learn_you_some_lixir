defmodule QuickSort do
	def quicksort([]), do: []
  def quicksort([pivot|rest]) do
    {smaller, larger} = partition(pivot, rest, [], [])
    quicksort(smaller) ++ [pivot] ++ quicksort(larger)
  end
  
  def partition(_, [], smaller, larger), do: {smaller, larger}
  def partition(pivot, [h|t], smaller, larger) do
		cond do
			h <= pivot ->
				partition(pivot, t, [h|smaller], larger)
		  h > pivot ->
				partition(pivot, t, smaller, [h|larger])
		end
  end
end
