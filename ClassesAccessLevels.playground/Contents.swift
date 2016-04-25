//: Classes - access levels and computed properties


class Person {
    
    //stored properties
    var firstName : String
    var lastName : String
    var age : Int
    var occu : String
    var hoursPerWeek : Double
    var hourlyRate : Double
    static var employer = "Microsoft"
    static var insurance = "Malakoff"
    
    //computed properties
    var weeklySalary : Double{
        return hoursPerWeek * hourlyRate
    }
    
    var fullName : String{
        return "\(firstName) \(lastName)"
    }
    
    //methods
    func description() -> String{
        return "\(fullName) is a \(age) years old \(occu) who works \(hoursPerWeek) hours per week and makes \(weeklySalary)€ per week."
    }
    
    //custom initializer (default not needed)
    init(firstName:String, lastName:String, age:Int, occupation:String, hoursPerWeek:Double, hourlyRate:Double){
        
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.occu = occupation
        self.hoursPerWeek = hoursPerWeek
        self.hourlyRate = hourlyRate
    }
}

var Camille = Person (firstName: "Camille", lastName: "Maisonobe", age: 23, occupation: "printing engineer", hoursPerWeek: 35, hourlyRate: 15)

Camille.description()

Person.description(Camille)
Person.employer