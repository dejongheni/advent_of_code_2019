defmodule AdventOfCode2019.Day3_2 do
  def calculate_distance list1, list2 do
    list1 = list_expender list1
    list2 = list_expender list2
    list1_no_steps = Enum.map(list1, fn x -> {x.x, x.y} end)
    list2_no_steps = Enum.map(list2, fn x -> {x.x, x.y} end)
    list_diff = list1_no_steps -- list2_no_steps
    list_commons = list1_no_steps -- list_diff

    list1 = Enum.reduce(list_commons, [], fn {x, y}, acc -> acc ++ [Enum.find(list1, [], &match?(%{x: ^x, y: ^y}, &1))] end)
    list2 = Enum.reduce(list_commons, [], fn {x, y}, acc -> acc ++ [Enum.find(list2, [], &match?(%{x: ^x, y: ^y}, &1))] end)

    Enum.reduce(list1, [], fn %{x: x, y: y, steps: steps}, acc ->
      IO.inspect %{x: x, y: y, steps: steps}
      case Enum.find(list2, [], &match?(%{x: ^x, y: ^y}, &1)) do
        %{steps: steps2} -> acc ++ [steps + steps2]
        [] -> acc
      end
    end)
    |> Enum.sort
    |> Enum.reject(fn x -> x == 0 || x == 1 end)
    |> List.first
  end
  def list_expender list do
    list = Enum.map(list, fn elem ->
      {direction, number_of_steps} = String.split_at(elem, 1)
      %{direction: direction, number_of_steps: String.to_integer(number_of_steps)}
    end)
    [%{x: 0, y: 0, steps: 0}] ++ list_expender(list, 0, 0, 0)
    |> List.flatten
  end

  def list_expender [hd|tl], x, y, steps do
    {expended, steps} =
      case hd.direction do
        "R" -> Enum.map_reduce(x+1..x+hd.number_of_steps, steps, fn xpos, acc -> {%{x: xpos, y: y, steps: acc + 1}, acc + 1} end)
        "L" -> Enum.map_reduce(x-1..x-hd.number_of_steps, steps, fn xpos, acc -> {%{x: xpos, y: y, steps: acc + 1}, acc + 1} end)
        "U" -> Enum.map_reduce(y+1..y+hd.number_of_steps, steps, fn ypos, acc -> {%{x: x, y: ypos, steps: acc + 1}, acc + 1} end)
        "D" -> Enum.map_reduce(y-1..y-hd.number_of_steps, steps, fn ypos, acc -> {%{x: x, y: ypos, steps: acc + 1}, acc + 1} end)
      end
    last = List.last(expended)
    expended ++ list_expender(tl, last.x, last.y, steps)
  end

  def list_expender [], _, _, _ do
    []
  end

end
