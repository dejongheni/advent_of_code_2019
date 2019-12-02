defmodule AdventOfCode2019 do
  import AdventOfCode2019.Utils
  use Application

  def start(_type, _args) do
    IO.puts "calculating santa's stars location"
    IO.puts "Day 1: The Tyranny of the Rocket Equation"
    IO.puts "-- part 1 --"
    IO.puts day1_1("inputs/input_day1_1.txt")
    IO.puts "-- part 2 --"
    IO.puts day1_2("inputs/input_day1_1.txt")
    IO.puts "Day 2: 1202 Program Alarm"
    IO.puts "-- part 1 --"
    IO.puts day2_1("inputs/input_day2_1.txt")
    IO.puts "-- part 2 --"
    IO.puts day2_2("inputs/input_day2_1.txt")

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
end
