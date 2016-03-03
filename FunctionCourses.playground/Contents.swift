//: Playground - noun: a place where people can play

//: Functions - syntax

func helloThere(name: String) -> String{ //returns a string (-> String)
    return "Hello there \(name)"
}

helloThere("Quentin")

func printNumber(number: Int) -> String{
    return "The number given was \(number)."
}

printNumber(25)


func turnOffAppliance(appliance: String, isOn: Bool){
    if isOn{
        print("Please turn off the \(appliance)")
    }
    else{
        print("I have already turned off the \(appliance)")
    }
}

turnOffAppliance("oven", isOn: false)

turnOffAppliance("television", isOn:true)

func addition(number1 : Int, number2 : Int) -> Int{
    return number1 + number2
}

addition(5, number2:  7)

func multiply (num1: Int, num2: Int) -> String{
    let result = "\(num1 * num2)"
    return result
}

var a = 54
var b = 487

multiply(a, num2: b)