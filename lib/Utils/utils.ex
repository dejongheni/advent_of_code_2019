defmodule AdventOfCode2019.Utils do
  def read_file fileName do
    File.read!(fileName)
  end

  def file_to_list file do
    file |> String.trim |> String.split("\n")
  end

  def list_of_strings_to_int list do
    list |> Enum.map(fn str -> String.to_integer(str) end)
  end
end
