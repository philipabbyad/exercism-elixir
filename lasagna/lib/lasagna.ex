defmodule Lasagna do
  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven do
    40
  end

  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(minutes) do
    expected_minutes_in_oven() - minutes
  end

  # Please define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(num_layers) do
    num_layers * 2
  end

  # Please define the 'total_time_in_minutes/2' function

  # Please define the 'alarm/0' function
end
