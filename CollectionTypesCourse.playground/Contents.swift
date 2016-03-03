//: Collection types : arrays

let catNames = ["Kitty", "Calypso", "Link"]

var emptyArray : [String] = []

var dogNames = [String]()

dogNames.append("Choco")

dogNames += ["test", "caca", "Camille"]

dogNames.count

dogNames

dogNames[3]

for name in dogNames{
    print(name)
}

// dogNames.removeAtIndex(0)

dogNames

dogNames.enumerate()

for (index, name) in dogNames.enumerate(){
    print("\(index) \(name)")
}


if dogNames.isEmpty{
    print ("Array is empty")
}
else{
    print ("There are \(dogNames.count) names in the array")
}


//: Collection types : dictionnaries

var items = [Int : String]()

items[123] = "Production 1"

items

var states = ["NJ" : "New Jersey", "NY" : "New York", "PA" : "Pennsylvania", "CA" : "California"]

states["NJ"]

states.updateValue("Commonwealth of Pennsylvania", forKey: "PA")

states["PA"]

states.count

states["PA"] = nil

states

for (abbrev, state) in states{
    print ("\(abbrev) is the short for \(state)")
}

//: Collection types : sets


var teams : Set<String>

var myBills : Set = ["Electricty", "water", "food", "internet", "water"]

myBills.count

myBills.insert("Cellular data")

myBills.remove("Cellular data")


for bills in myBills{
    print(bills)
}

//: Collection types : tuples (unofficially)

let productIndex = [123 : "Bananas", 256 : "Oranges", 753 : "Apples"]

for (sku, product) in productIndex{
    print ("The sku for \(product) is \(sku)")
}

let tuple1 = ("Quentin", 22, 2.5, true)

tuple1.0

func getCarDetails() -> (String, Int, Bool){
    let name = "Ferrari"
    let speed = 400
    let isConvertable = true
    
    return (name, speed, isConvertable)
}

let car = getCarDetails()

car.0
car.1
car.2

let (name, kmh, top) = getCarDetails()

name
kmh
top

print ("The \(name) can go at least \(kmh) kmh.")
