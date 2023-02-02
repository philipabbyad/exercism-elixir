defmodule Lasagna do
  def expected_minutes_in_oven, do: 40

  def remaining_minutes_in_oven(minutes) do
    expected_minutes_in_oven() - minutes
  end

  def preparation_time_in_minutes(num_layers) do
    num_layers * 2
  end

  def total_time_in_minutes(num_layers, minutes) do
    preparation_time_in_minutes(num_layers) + minutes
  end

  def alarm, do: "Ding!"
end
