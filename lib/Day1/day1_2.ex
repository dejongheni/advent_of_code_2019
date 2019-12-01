defmodule AdventOfCode2019.Day1_2 do

  def calculate_fuel masses_list do
    Enum.reduce(masses_list, 0, fn masses, acc -> acc + total_fuel(masses) end)
  end

  def total_fuel masses do
    fuel = fuel(masses)
    if fuel > 0 do
      fuel + total_fuel(fuel)
    else
      0
    end
  end

  def fuel masses do
    trunc((masses/3) - 2)
  end

end
