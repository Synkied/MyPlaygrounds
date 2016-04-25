//: Classes - Introduction and basic syntax.

class Car {
    
    //properties
    var name = ""
    var milage = 0
    
    //methods (functions in classes)
    func description() ->String{
        return "The \(name) has \(milage) miles on it"
    }

    //initializers and/or custom initializers
    
}


var Viper = Car()

Viper.name = "Viper"
Viper.milage = 10050

Viper.description()
