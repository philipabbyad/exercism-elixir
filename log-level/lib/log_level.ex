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
    log_label = to_label(level, legacy?)
    cond do
      log_label == :error or log_label == :fatal -> :ops
      log_label == :unknown ->
        cond do
          legacy? -> :dev1
          not legacy? -> :dev2
        end
      true -> false
    end
  end
end
