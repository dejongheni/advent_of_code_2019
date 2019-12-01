defmodule AdventOfCode2019 do
  import AdventOfCode2019.Utils

  def day1_1 masses_file do
    masses_file
    |> read_file
    |> file_to_list
    |> list_of_strings_to_int
    |> AdventOfCode2019.Day1_1.calculate_fuel
  end
  def day1_2 masses_file do
    masses_file
    |> read_file
    |> file_to_list
    |> list_of_strings_to_int
    |> AdventOfCode2019.Day1_2.calculate_fuel
  end
end
