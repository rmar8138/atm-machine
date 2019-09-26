class ATMModel
  attr_reader(:balance)

  def initialize(balance: 100)
    @balance = balance
    @pin = "123"
  end

  def correct_pin?(input)
    input == @pin ? true : false
  end

  def withdraw_money(amount)
    if @balance - amount < 0
      return nil
    end

    @balance -= amount
  end

  def deposit_money(amount)
    @balance += amount
  end
end