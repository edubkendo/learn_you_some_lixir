defmodule Guards do
	def old_enough(x) when x >= 16 do
		true
	end
	def old_enough(_), do: false

	def right_age(x) when x >= 16 and x <= 104, do: true
	def right_age(_), do: false

	def wrong_age(x) when x < 16 or x > 104, do: true
	def wrong_age(_), do: false
end
