defmodule AdventOfCode2019.Day2_2 do
  def calculate_program list do
    Enum.map(0..99, fn x -> async_pos1(x, list) end)
    |> List.flatten
    |> Enum.reject(fn x -> x == :error end)
    |> List.first
  end

  def async_pos1 x, list do
    Enum.map(0..99, fn y -> async_pos2(x, y, list) end)
  end

  def async_pos2 x, y, list do
    task = Task.async(fn -> calculate_firsts(x, y, list) end)
    Task.await(task)
  end

  def calculate_firsts x, y, list do
    list = list
    |> List.replace_at(1, x)
    |> List.replace_at(2, y)
    |> AdventOfCode2019.Day2_1.calculate_program
    if List.first(list) == 19690720 do
      100 * x + y
    else
      :error
    end
  end
end
