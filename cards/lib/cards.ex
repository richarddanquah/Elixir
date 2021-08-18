defmodule Cards do


  def create_desk do
    values = ["Ace","Two","Three","Four","Five"]
    suits = ["Spades","Clubs","Hearts","Diamonds"]

    # A list comprehension
    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
   Enum.shuffle(deck)
  end

  # the question mark tells the developer the method will ruturn a true or false.
  def contains?(deck,card) do
   Enum.member?(deck,card)
  end


  def deal(deck,hand_size) do
     Enum.split(deck,hand_size)
  end


end
