defmodule AdventOfCode2019.Day4_1 do
  def calculate_passwords start_range, end_range do
    Enum.filter(start_range..end_range, &is_valid/1) |> length
  end

  def is_valid password do
    char_password = Integer.to_charlist(password)
    validate_size(char_password) && validate_adjacent(char_password) && validate_increase(char_password)

  end

  def validate_size password do
    length(password) == 6
  end

  def validate_adjacent password do
    Enum.dedup(password) != password
  end

  def validate_increase password do
    Enum.sort(password) == password
  end
end
