defmodule AdventOfCode2019.Day1_1 do

  def calculate_fuel [hd | tl] do
    fuel = trunc((hd/3) - 2)
    fuel + calculate_fuel(tl)
  end

  def calculate_fuel [] do
    0
  end
end
