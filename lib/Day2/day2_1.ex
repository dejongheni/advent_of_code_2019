defmodule AdventOfCode2019.Day2_1 do
  def calculate_program list do
    program1202(list, list)
  end

  def program1202 [hd|tl], list do
    case hd do
      1 -> addition(tl, list)
      2 -> multiplication(tl, list)
      99 -> list
    end
  end

  def addition [pos1, pos2, posRes | tl], list do
    list = List.replace_at(list, posRes, Enum.at(list, pos1) + Enum.at(list, pos2))
    program1202(Enum.take(list, - length(tl)), list)
  end

  def multiplication [pos1, pos2, posRes | tl], list do
    list = List.replace_at(list, posRes, Enum.at(list, pos1) * Enum.at(list, pos2))
    program1202(Enum.take(list, - length(tl)), list)
  end
end
