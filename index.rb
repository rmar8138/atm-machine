# * ATM Application:
#     Below are a list of responsibilities for an ATM application.
#     Consider each and decide whether it would be the responsibility of the Model, the View, or the Controller.

#     ** ATM **
#     MODEL
#     retrieve balance
#     dispense money
#     VIEW
#     prompt for user input
#     respond to user choice
#     display balance
#     respond to invalid pin
#     CONTROLLER

require_relative("ATMController")

atm = ATMController.new
atm.run



