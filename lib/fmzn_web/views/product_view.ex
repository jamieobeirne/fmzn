defmodule FmznWeb.ProductView do
  use FmznWeb, :view

  def make_sku do
    "#{get_random_letters(2)}#{Enum.random(300..1000)}-#{get_random_letters(2)}#{Enum.random(1000..10000)}-#{get_random_letters(2)}"
  end

  def get_random_letters(n) do
    Enum.map(1..n, fn(_) -> Enum.random(["A","B","C", "D","E","F","G","H","J","K","L","M","N","P","Q","R","S","T"]) end) |> List.to_string
  end

  def currency_format(val) do
    Float.floor(val, 2)
  end

end
