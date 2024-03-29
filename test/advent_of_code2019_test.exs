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

  test "day3_1 - 1" do
    assert AdventOfCode2019.Day3_1.calculate_distance(["R75","D30","R83","U83","L12","D49","R71","U7","L72"], ["U62","R66","U55","R34","D71","R55","D58","R83"]) == 159
  end

  test "day3_1 - 2" do
    assert AdventOfCode2019.Day3_1.calculate_distance(["R98","U47","R26","D63","R33","U87","L62","D20","R33","U53","R51"],["U98","R91","D20","R16","D67","R40","U7","R15","U6","R7"]) == 135
  end

  test "day3_2 - 1" do
    assert AdventOfCode2019.Day3_2.calculate_distance(["R75","D30","R83","U83","L12","D49","R71","U7","L72"], ["U62","R66","U55","R34","D71","R55","D58","R83"]) == 610
  end

  test "day3_2 - 2" do
    assert AdventOfCode2019.Day3_2.calculate_distance(["R98","U47","R26","D63","R33","U87","L62","D20","R33","U53","R51"],["U98","R91","D20","R16","D67","R40","U7","R15","U6","R7"]) == 410
  end

  test "day3_2 - 3" do
    assert AdventOfCode2019.Day3_2.calculate_distance(["R8","U5","L5","D3"],["U7","R6","D4","L4"]) == 30
  end

  test "day4_1 - 1" do
    assert AdventOfCode2019.Day4_1.is_valid(111111) == true
  end

  test "day4_1 - 2" do
    assert AdventOfCode2019.Day4_1.is_valid(223450) == false
  end

  test "day4_1 - 3" do
    assert AdventOfCode2019.Day4_1.is_valid(123789) == false
  end

  test "day4_2 - 1" do
    assert AdventOfCode2019.Day4_2.is_valid(112233) == true
  end

  test "day4_2 - 2" do
    assert AdventOfCode2019.Day4_2.is_valid(123444) == false
  end

  test "day4_2 - 3" do
    assert AdventOfCode2019.Day4_2.is_valid(111122) == true
  end

  test "day5_1 - 1" do
    assert AdventOfCode2019.Day5_1.calculate_program([1, 0, 0, 0, 99]) == [2, 0, 0, 0, 99]
  end

  test "day5_1 - 2" do
    assert AdventOfCode2019.Day5_1.calculate_program([2, 3, 0, 3, 99]) == [2, 3, 0, 6, 99]
  end

  test "day5_1 - 3" do
    assert AdventOfCode2019.Day5_1.calculate_program([2, 4, 4, 5, 99, 0]) == [2, 4, 4, 5, 99, 9801]
  end

  test "day5_1 - 4" do
    assert AdventOfCode2019.Day5_1.calculate_program([1, 1, 1, 4, 99, 5, 6, 0, 99]) == [30, 1, 1, 4, 2, 5, 6, 0, 99]
  end

  test "day5_1 - 5" do
    assert AdventOfCode2019.Day5_1.calculate_program([1002, 4, 3, 4, 33]) == [1002, 4, 3, 4, 99]
  end

  test "day5_1 - 6" do
    assert AdventOfCode2019.Day5_1.calculate_program([1101, 100, -1, 4, 0]) == [1101, 100, -1, 4, 99]
  end

  test "day6_1 - 1" do
    assert AdventOfCode2019.Day6_1.calculate_orbits(["COM)B", "B)C", "C)D", "D)E", "E)F", "B)G", "G)H", "D)I", "E)J", "J)K", "K)L"]) == 42
  end

  test "day6_2 - 1" do
    assert AdventOfCode2019.Day6_2.calculate_orbits(["COM)B", "B)C", "C)D", "D)E", "E)F", "B)G", "G)H", "D)I", "E)J", "J)K", "K)L", "K)YOU", "I)SAN"]) == 4
  end
end
