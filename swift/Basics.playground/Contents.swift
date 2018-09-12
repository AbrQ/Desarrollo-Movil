//: Playground - noun: a place where people can play

import UIKit

//CONSTANT AND VARIABLE VALUES

var variableValue = 0
let constantValue = 10

var x = 0.0, y = 1.1, z = 2.2

//TYPE OF ANNOTATION

var welcomeMessage: String
welcomeMessage = "hello"
print(welcomeMessage)

//INTERPOLATION
print("The value of welcomeMessage is: \(welcomeMessage)")

var red, green, blue: Double


//INTEGER BOUNDS
let minValue = UInt8.min
let maxValue = UInt8.max


//INTEGER LITERALS
let decimalInteger = 17
let binaryInteger = 0b10001    // binary notation
let octalInteger = 0o21        //octal notation
let hexadecimalInteger = 0x11  //hexadecimal notation

//EXPONENCIALS
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

//EXTRA FORMATTING
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

//INTEGER CONVERSIONS
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1

let twoThousandAndOne = twoThousand + UInt16(one)

//INTEGER AND FLOATING POINT CONVERSIONS
let three = 3
let pointOneFourOneSix = 0.1416
let pi = Double(three) + pointOneFourOneSix
let integerPi = Int(pi)

//TYPE ALIASES
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max

//BOOLEANS
let orangesAreDelicious = true
let watermelonsAreBlack = false

//TUPLES
let http404Error = (404, "not found")
let (statusNumber, statusMessage) = http404Error
print("The status number is: \(statusNumber)")
print("The status message is: \(statusMessage)")

//another form to access of a member's tuple
print("The status number is: \(http404Error.0)")
print("The status message is: \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
print("The status description is: \(http200Status.description)")


//OPTIONALS
var serverResponseCode: Int? = 404
serverResponseCode = nil

//FORCED UNWRAPPING
let value: Int? = 100

if value != nil {
    print("The value effectively has a value and it's: \(value!)")
}

//IMPLICITY UNWRAPPED OPTIONAL
let possiblyString: String? = "Hi man"
let stringValue:String = possiblyString!
let everString: String = "EverString"
let valString: String = everString


//ERROR HANDLING
func canThrowAnError() throws{
    //this function may or may not throw an error
}

do{
    try canThrowAnError()
    //no error was thrown
} catch{
    //an error was thrown
}


//DEBUGGING WITH ASSERTIONS
let age = 3
assert(age >= 0, "A person's age can't be less tha zero.")

if age > 10 {
    print("This is a boy")
} else if age > 0{
    print("This is only a baby")
}
else{
    assertionFailure("A person's age can't be less tha zero.")
}




//PRECONDITIONS
let index = 2
precondition(index > 0, "Index needs to be greater tha zero")






