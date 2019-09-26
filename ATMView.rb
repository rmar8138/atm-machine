class ATMView
  def greeting
    puts "Hi, Welcome to the ATM machine!"
  end

  def menu
    puts "Enter (1) to Withdraw, (2) to Deposit, (3) to View Balance or (4) to exit"
    gets.chomp
  end

  def prompt_user_withdraw
    puts "How much would you like to withdraw?"
    gets.chomp
  end

  def prompt_user_deposit
    puts "How much would you like to deposit?"
    gets.chomp
  end

  def print_balance(balance)
    puts "Your current balance is: $#{balance}"
  end

  def incorrect_input
    puts "Sorry, I didn't understand that."
  end

  def user_overwithdraw
    puts "Sorry, you do not have enough funds."
  end

  def goodbye
    puts "Good bye!"
  end
end