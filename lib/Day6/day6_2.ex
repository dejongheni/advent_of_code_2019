defmodule AdventOfCode2019.Day6_2 do
  def calculate_orbits list do
    Enum.map(list, fn x -> String.split x, ")" end)
    |> Enum.group_by(&List.first/1, &List.last/1)
    |> calculate_distance
  end

  def calculate_distance map do
    santa = find_orbit(map, "SAN") |> List.flatten
    you = find_orbit(map, "YOU") |> List.flatten
    difference_santa = (santa -- you) -- ["SAN"] |> length
    difference_you = (you -- santa) -- ["YOU"] |> length
    difference_santa + difference_you
  end

  def find_orbit _, "COM" do
    "COM"
  end

  def find_orbit _, nil do
    []
  end

  def find_orbit map, value do
    orbited_planet = find_key(map, value)
    [find_orbit(map, orbited_planet)] ++ [value]
  end

  def find_key map, value do
    map
    |> Enum.find(fn {_, val} -> Enum.member?(val, value) end)
    |> elem(0)
  end
end
