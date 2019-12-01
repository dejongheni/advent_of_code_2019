defmodule AdventOfCode2019Test do
  use ExUnit.Case
  doctest AdventOfCode2019

  test "day1_1" do
    assert AdventOfCode2019.Day1_1.calculate_fuel([12, 14, 1969, 100756]) == 34241
  end
  test "day1_2" do
    assert AdventOfCode2019.Day1_2.calculate_fuel([14, 1969, 100756]) == 51314
  end
end
