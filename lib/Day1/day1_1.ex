defmodule AdventOfCode2019.Day1_1 do
  def calculate_fuel list do
    Enum.reduce(list, 0, fn x, acc -> acc + trunc((x/3) - 2) end)
  end
end
