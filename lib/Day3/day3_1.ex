defmodule AdventOfCode2019.Day3_1 do
  def calculate_distance list1, list2 do
    list1 = list_expender list1
    list2 = list_expender list2
    list_diff = list1 -- list2
    list1 -- list_diff
    |> Enum.map(fn {x, y} -> abs(x) + abs(y) end)
    |> Enum.sort
    |> Enum.reject(fn x -> x == 0 end)
    |> List.first
  end

  def list_expender list do
    list = Enum.map(list, fn elem ->
      {direction, number_of_steps} = String.split_at(elem, 1)
      %{direction: direction, number_of_steps: String.to_integer(number_of_steps)}
    end)
    [{0,0}] ++ list_expender(list, 0, 0)
    |> List.flatten
  end

  def list_expender [hd|tl], x, y do
    expended =
      case hd.direction do
        "R" -> Enum.map(x..x+hd.number_of_steps, fn xpos -> {xpos, y} end)
        "L" -> Enum.map(x..x-hd.number_of_steps, fn xpos -> {xpos, y} end)
        "U" -> Enum.map(y..y+hd.number_of_steps, fn ypos -> {x, ypos} end)
        "D" -> Enum.map(y..y-hd.number_of_steps, fn ypos -> {x, ypos} end)
      end
    {x, y} = List.last(expended)
    expended ++ list_expender(tl, x, y)
  end

  def list_expender [], _, _ do
    []
  end

end
