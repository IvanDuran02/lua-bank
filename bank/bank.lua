-- Bank Table
Bank = { running = false, balance = 0 }

--[[ Still thinking about how I want to construct
the event loop, this might change ]]
function Bank:start()
    Bank.running = true
end

function Bank:stop()
    Bank.running = false
end

------------------------------

-- Bank functionality, Ex. Withdraw, Deposit, Transfer, etc...
function Bank:deposit(amount)
    print(string.format("Attempting to deposit $%d...", amount))
    Bank.balance = Bank.balance + amount
    print(string.format("Successfully deposited $%d\nNew Balance = $%d", amount, Bank.balance))
end

function Bank:withdraw(amount)
    print(string.format("Attempting to withdraw $%d...", amount))
    -- Check if there are sufficient funds in the account
    if Bank.balance > amount then
        Bank.balance = Bank.balance - amount
        print(string.format("Successfully withdrew $%d\nNew Balance = $%d", amount, Bank.balance))
    else
        print(string.format("Insufficient Funds.\nCurrent balance is $%d\nWithdrawl attempt was $%d", Bank.balance,
            amount))
    end
end

return Bank
