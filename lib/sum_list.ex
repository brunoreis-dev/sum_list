defmodule SumList do
  def call(list), do: sum(list, 0)

  defp sum([], acc), do: acc

  defp sum([head | tail], acc) do
    acc = acc + head
    sum(tail, acc)
  end

  def call_enum_sum(list), do: Enum.sum(list)
  def call_enum_max(list), do: Enum.max(list)
  def call_enum_min(list), do: Enum.min(list)
  def call_enum_map(list), do: Enum.map(list, fn elem -> elem + 1 end)
  def call_enum_any(list), do: Enum.any?(list, fn elem -> elem > 5 end)
end
