//: Optionals

// An optional is a variable that may or may not have a value.

var temperature : Double?

// Connect to the internet to get the temperature

temperature = 30

// Code with forcibly unwrapped optional that will crash an app if nil.

//var tempString = "The temperature is \(temperature)"

if let temp = temperature{
    var tempString = "The temperature is \(temp) °C."
}
else{
    print("Temperature not available...")
}

var states = ["NJ" : "New Jersey", "NY" : "New York"]

func getState(abbrev:String) ->String{
    
    guard let state = states[abbrev] else{
        return "State not found for \(abbrev)"
    }
    
    return "\(abbrev) is the abbreviation for \(state)"
}

getState("NY")

getState("LA")
