//: Enumerations

// Enumerations limit selections and are often used for user selection wihin applications

import UIKit

let keyboardType = UIKeyboardType.NumberPad

let keyboardStyle = UIKeyboardAppearance.Dark

//

enum SeatPreference {
    
    case Window
    case Aisle
    case Middle
    case NoPreference
    
}

var customerPrefers : SeatPreference

customerPrefers = .Aisle



switch customerPrefers{
    
case .Window:
    print("Customer prefers the window seat.")
    
case .Aisle:
    print("Customer prefers the aisle seat.")

case .Middle:
    print("Customer prefers the middle seat.")

case .NoPreference:
    print("Customer has no preference.")
}