defmodule AdventOfCode2019Test do
  use ExUnit.Case
  doctest AdventOfCode2019

  test "day1_1" do
    assert AdventOfCode2019.Day1_1.calculate_fuel([12, 14, 1969, 100756]) == 34241
  end
  test "day1_2" do
    assert AdventOfCode2019.Day1_2.calculate_fuel([14, 1969, 100756]) == 51314
  end
  test "day2_1 - 1" do
    assert AdventOfCode2019.Day2_1.calculate_program([1, 0, 0, 0, 99]) == [2, 0, 0, 0, 99]
  end
  test "day2_1 - 2" do
    assert AdventOfCode2019.Day2_1.calculate_program([2, 3, 0, 3, 99]) == [2, 3, 0, 6, 99]
  end
  test "day2_1 - 3" do
    assert AdventOfCode2019.Day2_1.calculate_program([2, 4, 4, 5, 99, 0]) == [2, 4, 4, 5, 99, 9801]
  end
  test "day2_1 - 4" do
    assert AdventOfCode2019.Day2_1.calculate_program([1, 1, 1, 4, 99, 5, 6, 0, 99]) == [30, 1, 1, 4, 2, 5, 6, 0, 99]
  end

end
