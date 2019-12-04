defmodule AdventOfCode2019.Day4_2 do
  alias AdventOfCode2019.Day4_1
  def calculate_passwords start_range, end_range do
    Enum.filter(start_range..end_range, &is_valid/1) |> length
  end

  def is_valid password do
    char_password = Integer.to_charlist(password)
    Day4_1.validate_size(char_password) && validate_adjacent(char_password) && Day4_1.validate_increase(char_password)
  end

  def validate_adjacent password do
    Enum.group_by(password, &to_string/1)
    |> Map.to_list
    |> Enum.filter(fn {_, number} -> length(number) == 2 end )
    |> length > 0
  end
end
