Bank = require("bank")

print(Bank.running)

Bank:start()

print(Bank.running)

print("-----------------")
Bank:deposit(50)
Bank:withdraw(24)
Bank:withdraw(21)
Bank:deposit(123)
