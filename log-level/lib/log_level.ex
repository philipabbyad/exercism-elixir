defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 or level == 5 ->
        cond do
          legacy? -> :unknown
          level == 0 -> :trace
          level == 5 -> :fatal
        end
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
  end
end
