//: Error throwing functions


func greeting(person: [String: String]){
    // guard syntax
    guard let name = person ["name"] else{
        return
    }
    print ("Hello there \(name)")
}

greeting(["name": "Quentin"])


//: Error Throwing

var bankBalance : Double = 1000
var bankIsAvailable = true

enum BankingError : ErrorType{
    case InsufficientFunds
    case BankNotAvailable
}

func withdrawl(amount: Double) throws -> Double{
    guard bankBalance > amount else {
        throw BankingError.InsufficientFunds
    }
    
    guard bankIsAvailable == true else{
        throw BankingError.BankNotAvailable
    }
    
    bankBalance = bankBalance - amount
    
    return bankBalance
}

do {
    var newBalance = try withdrawl(750)
    print("New balance is \(newBalance)")
} catch BankingError.InsufficientFunds{
    print("There are not enough funds in the account")
} catch BankingError.BankNotAvailable{
    print("The bank is not available at the moment...")
} catch{
    print("Unknown error")
}