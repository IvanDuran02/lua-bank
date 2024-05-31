Bank = { running = false, balance = 0 }

function Bank:start()
    Bank.running = true
end

function Bank:stop()
    Bank.running = false
end

function Bank:deposit(amount)
    print(string.format("Attempting to deposit $%d...", amount))
    Bank.balance = Bank.balance + amount
    print(string.format("Successfully deposited $%d\nNew Balance = $%d", amount, Bank.balance))
end

function Bank:withdraw(amount)
    print(string.format("Attempting to withdraw $%d...", amount))
    if Bank.balance > amount then
        Bank.balance = Bank.balance - amount
        print(string.format("Successfully withdrew $%d\nNew Balance = $%d", amount, Bank.balance))
    else
        print(string.format("Insufficient Funds.\nCurrent balance is $%d\nWithdrawl attempt was $%d", Bank.balance,
            amount))
    end
end

return Bank
