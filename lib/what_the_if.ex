defmodule WhatTheIf do
  def heh_fine() do
    cond do
      1 == 1 ->
        :works
      1 == 2 or 1 == 1 ->
        :works
      1 == 2 and 1 == 1 ->
        :fails
    end
  end

  def oh_god(n) do
    if n == 2 do
      :might_succeed
    else
      :always_does
    end
  end

  def help_me(animal) do
    talk = case animal do
             :cat  ->
               "meow"
             :beef ->
               "mooo"
             :dog  ->
               "bark"
             :tree ->
               "bark"
             _     ->
               "fgdadfgna"
           end
    {animal, "says #{talk}!"}
  end

  def insert(x, []), do: [x]
  def insert(x, set) do
    case Enum.member?(x, set) do
      true ->
        set
      false ->
        [x|set]
    end
  end

  def beach(temperature) do
    case temperature do
      {:celsius, n} when n >= 20 or n <= 45 ->
        "favorable"
      {:kelvin, n} when n >= 293 or n <= 318 ->
        "scientifically favorable"
      {:fahrenheit, n} when n >= 68 or n <= 113 ->
        "favorable in the US"
      _ ->
        "avoid beach"
    end
  end
end
