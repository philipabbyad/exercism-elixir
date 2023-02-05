defmodule Secrets do
  def secret_add(secret) do
    fn number ->
      number + secret
    end
  end

  def secret_subtract(secret) do
    fn number ->
      number - secret
    end
  end

  def secret_multiply(secret) do
    fn number -> number * secret end
  end

  def secret_divide(secret) do
    fn number -> trunc(number / secret) end
  end

  def secret_and(secret) do
    # Please implement the secret_and/1 function
  end

  def secret_xor(secret) do
    # Please implement the secret_xor/1 function
  end

  def secret_combine(secret_function1, secret_function2) do
    # Please implement the secret_combine/2 function
  end
end