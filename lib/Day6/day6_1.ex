defmodule AdventOfCode2019.Day6_1 do
  def calculate_orbits list do
    Enum.map(list, fn x -> String.split x, ")" end)
    |> Enum.group_by(&List.first/1, &List.last/1)
    |> find_orbits
  end

  def find_orbits map do
    find_orbits(map, map["COM"], 1)
  end

  def find_orbits _, nil, _ do
    0
  end

  def find_orbits map, orbiting_list, distance do
    Enum.reduce(orbiting_list, 0, fn planet, acc ->
      acc + distance + find_orbits(map, map[planet], distance + 1)
    end)
  end
end
