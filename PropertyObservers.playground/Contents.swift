//: Property observers - getters and setters

// Example 1

var inches : Double = 0

var feet : Double {

get{
    return (inches / 12)
}
set {
    inches = (newValue * 12)
}
}

feet = 3

print("Inches = \(inches)")

print("Inches = \(feet)")


// Example 2

var celsius : Double = 0

var fahrenheit : Double {
get{
    return (celsius * 1.8) + 32
}

set{
    celsius = (newValue - 32 ) / 1.8
}
}

celsius = 15

print("Celsius = \(celsius)")

print("Fahrenheit = \(fahrenheit)")


// Example 3

var feet2 : Double = 0
var meters : Double {

get{
    return(feet2 * 0.3048)
}
set{
    feet2 = (newValue / 0.3048)
    
}
}

meters = 1

print("Feet = \(feet2)")
print("Meters = \(meters)")


// Example 4

var display = "0"

var displayValue : Double {

get{
    return Double(display)!
}
set{
    display = String(newValue)
}
}

displayValue = 5

display
displayValue





