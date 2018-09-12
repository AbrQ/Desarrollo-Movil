//: Playground - noun: a place where people can play

import UIKit

//NIL

struct Book{
    var name: String
    var publicationYear: Int?
}

let primerLibro = Book(name: "Game Of Thrones", publicationYear: 1999)
let segundoLibro = Book(name: "Choque de Reyes", publicationYear: 2001)
let tercerLibro = Book(name: "Festin de Cuervos", publicationYear: 2003)

let sextoLibro = Book(name: "Vientos de Invierno", publicationYear: nil)

let books = [primerLibro,segundoLibro,tercerLibro,sextoLibro]



//could be nil later
var serverError: Int? = 404
//var serverError: Int? = nil


//WORKING AND ACCESSING TO OPTIONAL VALUES

var numberOfSongs: Int? = 11
let unwrapedValue = numberOfSongs! //runtime error if there isn't value
print(unwrapedValue)


//another kind of working with unwraped values
if let unwrapedYear = sextoLibro.publicationYear{
    print("This book was released in: \(unwrapedYear)")
}
else{
    print("We don't have information about publication year")
}


//FUNCTIONS AND OPTIONALS

func printName(firstName: String, middleName: String?, lastName: String){}
//another example
//func urlWeb(url: URL) -> String? {}


//FAILABLE INITIALIZERS

struct Toddler{
    var name: String
    var months: Int
    
    init?(name: String, months: Int){
        if (months < 12 || months > 36){
            return nil
        }
        else{
            self.name = name
            self.months = months
        }
    }
}

if let toddlerStatus = Toddler(name: "miniVic", months: 13){
    print("Name: \(toddlerStatus.name) and months: \(toddlerStatus.months)")
} else{
    print("Maybe The child is over 3 years or less than 1")
}

//OPTIONAL CHAINING
class Person{
    var name: String = "Johana"
    var residence: Residence?
    }


class Residence{
    var address: Address?
}

class Address{
    var buildingNumber: Int = 3
    var floorNumber: Int = 2
    
}

if let theResidence = (Person.init().residence?.address?.floorNumber){
    print("Johana's floor is: \(theResidence)")
}

//IMPLICITY UNWRAPPED OPTIONALS

//TYPE CASTING AND INSPECTION

//AS? <- CONDITIONAL CAST
//AS! <- CERTAIN THAT THE TYPE IS CORRECT

//ANY
var anyTypes:[Any] = [12,"Billy",3.1416]

if let first = anyTypes[0] as? String{
    print("\(first)")
} else{
    print("Its'n a String")
}


//GUARD

//To avoyd pyramid of doom

/*guard condition else{
 false: execute some code
 }
 true: execute some code
 */

func divide(_ number: Double, by divisor: Double){
    guard divisor != 0.0 else {
        return
    }
    let result = number / divisor
    print("The division is: \(result)")
}

divide(10, by: 5)


//GUARD WITH OPTIONALS

func processBook(name: String?, price: Double?, pages: Int?){
    guard let theName = name, let thePrice = price, let thePages = pages else{
        return
    }
    print("\(theName), $ \(thePrice), \(thePages) pages")
}

processBook(name: "Castlevania", price: 17.92, pages: 390)


//CONSTANT AND VARIABLE SCOPE

//ENUMERATIONS

enum compassPoint{
    case north
    case east
    case south
    case west
}

var compassHeading = compassPoint.north

switch compassHeading {
case .north:
    print("You're in the north")
case .east:
    print("You're in the east")
case .south:
    print("You're in the south")
case .west:
    print("You're in the west")
//default:
//    print("You're in nowhere")
}

enum Genre{
    case animated, liveAction
}

struct Movie{
    var name: String
    var genre: Genre
}

let movie = Movie(name: "Nightemare Before Christmas", genre: .animated)
