defmodule AdventOfCode2019.Day5_2 do
  def calculate_program list do
    program1202(list, list)
  end

  def program1202 [hd|tl], list do
    [mode3rd, mode2nd, mode1rst | code] = hd |> Integer.to_charlist |> fill_opcode

    case code do
      '01' -> addition(tl, list, mode1rst, mode2nd, mode3rd)
      '02'-> multiplication(tl, list, mode1rst, mode2nd, mode3rd)
      '03' -> input(tl, list)
      '04' -> output(tl, list, mode1rst)
      '05' -> jump_if_true(tl, list, mode1rst, mode2nd)
      '06' -> jump_if_false(tl, list, mode1rst, mode2nd)
      '07' -> less_than(tl, list, mode1rst, mode2nd)
      '08' -> equals(tl, list, mode1rst, mode2nd)
      '99' -> list
    end
  end

  def fill_opcode opcode do
    if length(opcode) < 5 do
      Enum.map(1..5-length(opcode), fn _ -> '0' end) ++ opcode |> List.to_charlist()
    else
      opcode
    end
  end

  def get_num_pos number, mode, list do
    case mode do
      ?0 -> Enum.at(list, number)
      ?1 -> number
    end
  end

  def addition [pos1, pos2, posRes | tl], list, mode1rst, mode2nd, _ do
    pos1 = get_num_pos(pos1, mode1rst, list)
    pos2 = get_num_pos(pos2, mode2nd, list)
    list = List.replace_at(list, posRes, pos1 + pos2)
    program1202(Enum.take(list, - length(tl)), list)
  end

  def multiplication [pos1, pos2, posRes | tl], list, mode1rst, mode2nd, _ do
    pos1 = get_num_pos(pos1, mode1rst, list)
    pos2 = get_num_pos(pos2, mode2nd, list)
    list = List.replace_at(list, posRes, pos1 * pos2)
    program1202(Enum.take(list, - length(tl)), list)
  end

  def input [pos | tl], list do
    input = IO.gets("input identification\n")
      |> String.trim
      |> String.to_integer
    list = List.replace_at(list, pos, input)
    program1202(Enum.take(list, - length(tl)), list)
  end

  def output [pos | tl], list, mode do
    IO.puts get_num_pos(pos, mode, list)
    program1202(Enum.take(list, - length(tl)), list)
  end

  def jump list, pos do
    {_, tl} = Enum.split(list, pos)
    tl
  end

  def jump_if_true [pos1, pos2 | tl], list, mode1rst, mode2nd do
    pos1 = get_num_pos(pos1, mode1rst, list)
    pos2 = get_num_pos(pos2, mode2nd, list)
    if pos1 != 0 do
      program1202(jump(list, pos2), list)
    else
      program1202(tl, list)
    end
  end

  def jump_if_false [pos1, pos2 | tl], list, mode1rst, mode2nd do
    pos1 = get_num_pos(pos1, mode1rst, list)
    pos2 = get_num_pos(pos2, mode2nd, list)
    if pos1 == 0 do
      program1202(jump(list, pos2), list)
    else
      program1202(tl, list)
    end
  end

  def less_than [pos1, pos2, pos3 | tl], list, mode1rst, mode2nd do
    pos1 = get_num_pos(pos1, mode1rst, list)
    pos2 = get_num_pos(pos2, mode2nd, list)
    list =
      if pos1 < pos2 do
        List.replace_at(list, pos3, 1)
      else
        List.replace_at(list, pos3, 0)
      end
    program1202(Enum.take(list, - length(tl)), list)
  end

  def equals [pos1, pos2, pos3 | tl], list, mode1rst, mode2nd do
    pos1 = get_num_pos(pos1, mode1rst, list)
    pos2 = get_num_pos(pos2, mode2nd, list)
    list =
      if pos1 == pos2 do
        List.replace_at(list, pos3, 1)
      else
        List.replace_at(list, pos3, 0)
      end
    program1202(Enum.take(list, - length(tl)), list)
  end
end
