defmodule AdventOfCode2019 do
  import AdventOfCode2019.Utils
  use Application

  def start(_type, _args) do
    # IO.puts "calculating santa's stars location"
    # IO.puts "Day 1: The Tyranny of the Rocket Equation"
    # IO.puts "-- part 1 --"
    # IO.puts day1_1("inputs/input_day1_1.txt")
    # IO.puts "-- part 2 --"
    # IO.puts day1_2("inputs/input_day1_1.txt")
    # IO.puts "Day 2: 1202 Program Alarm"
    # IO.puts "-- part 1 --"
    # IO.puts day2_1("inputs/input_day2_1.txt")
    # IO.puts "-- part 2 --"
    # IO.puts day2_2("inputs/input_day2_1.txt")
    # IO.puts "Day 3: Crossed Wires"
    # IO.puts "-- part 1 --"
    # IO.puts day3_1("inputs/input_day3_1.txt")
    # IO.puts "-- part 2 --"
    # IO.puts day3_2("inputs/input_day3_1.txt")
    # IO.puts "Day 4: Secure Container"
    # IO.puts "-- part 1 --"
    # IO.puts day4_1()
    # IO.puts "-- part 2 --"
    # IO.puts day4_2()
    # IO.puts "Day 5: Sunny with a Chance of Asteroids"
    # IO.puts "-- part 1 --"
    # day5_1("inputs/input_day5_1.txt")
    # IO.puts "-- part 2 --"
    # day5_2("inputs/input_day5_1.txt")
    IO.puts "Day 6: Universal Orbit Map"
    IO.puts "-- part 1 --"
    IO.puts day6_1("inputs/input_day6_1.txt")
    Task.start(fn -> :timer.sleep(1000); IO.puts("") end)
  end

  def day1_1 masses_file do
    masses_file
    |> read_file
    |> file_to_list_space
    |> list_of_strings_to_int
    |> AdventOfCode2019.Day1_1.calculate_fuel
  end
  def day1_2 masses_file do
    masses_file
    |> read_file
    |> file_to_list_space
    |> list_of_strings_to_int
    |> AdventOfCode2019.Day1_2.calculate_fuel
  end

  def day2_1 program_file do
    program_file
    |> read_file
    |> file_to_list_comma
    |> list_of_strings_to_int
    |> List.replace_at(1, 12)
    |> List.replace_at(2, 2)
    |> AdventOfCode2019.Day2_1.calculate_program
    |> List.first
  end

  def day2_2 program_file do
    program_file
    |> read_file
    |> file_to_list_comma
    |> list_of_strings_to_int
    |> AdventOfCode2019.Day2_2.calculate_program
  end

  def day3_1 wire_file do
    [list1, list2] = wire_file
    |> read_file
    |> file_to_list_space
    |> Enum.map(&file_to_list_comma/1)
    AdventOfCode2019.Day3_1.calculate_distance(list1, list2)
  end

  def day3_2 wire_file do
    [list1, list2] = wire_file
    |> read_file
    |> file_to_list_space
    |> Enum.map(&file_to_list_comma/1)
    AdventOfCode2019.Day3_2.calculate_distance(list1, list2)
  end

  def day4_1 do
    AdventOfCode2019.Day4_1.calculate_passwords(153517, 630395)
  end

  def day4_2 do
    AdventOfCode2019.Day4_2.calculate_passwords(153517, 630395)
  end

  def day5_1 program_file do
    program_file
    |> read_file
    |> file_to_list_comma
    |> list_of_strings_to_int
    |> AdventOfCode2019.Day5_1.calculate_program
  end

  def day5_2 program_file do
    program_file
    |> read_file
    |> file_to_list_comma
    |> list_of_strings_to_int
    |> AdventOfCode2019.Day5_2.calculate_program
  end

  def day6_1 program_file do
    program_file
    |> read_file
    |> file_to_list_space
    |> AdventOfCode2019.Day6_1.calculate_orbits
  end
end
