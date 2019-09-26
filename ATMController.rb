require_relative("ATMModel")
require_relative("ATMView")

class ATMController
  def initialize
    @model = ATMModel.new
    @view = ATMView.new
  end

  def run
    @view.greeting
    pin = @view.prompt_user_pin
    
    if !@model.correct_pin?(pin)
      return @view.incorrect_pin
    end

    input = get_user_menu_input

    case input
    when 1
      # Withdraw
      balance = user_withdraw
      @view.print_balance(balance)
    when 2
      # Deposit
      balance = user_deposit
      @view.print_balance(balance)
    when 3
      # View Balance
      @view.print_balance(@model.balance)
    when 4
      # Exit
      @view.goodbye
    end
  end

  def get_user_menu_input
    while true
      input = @view.menu.to_i

      if input != 1 && input != 2 && input != 3 && input != 4
        @view.incorrect_input
        next
      end
      
      return input
    end
  end

  def user_withdraw
    amount = @view.prompt_user_withdraw.to_i
    balance = @model.withdraw_money(amount)

    if !balance
      return @view.user_overwithdraw
    end

    balance
  end

  def user_deposit
    amount = @view.prompt_user_deposit.to_i
    balance = @model.deposit_money(amount)
  end
end