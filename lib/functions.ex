defmodule Functions do
  def head([h|_]), do: h
  def second([_, x|_]), do: x

  def same(x,x), do: true
  def same(_,_), do: false

  def valid_time({{y, m, d} = date, {h, min, s} = time}) do
    IO.puts "The Date tuple #{inspect(date)} says today is #{y}/#{m}/#{d},"
    IO.puts "The time tuple #{inspect(time)} indicates: #{h}:#{min}:#{s}."
  end

  def valid_time(_), do: IO.puts "Stop feeding me wrong data!"
end
