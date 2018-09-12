//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let joke = """
    Hi! my name is Pedo
    Hi, Pedo :v
"""
print(joke)

//EMPTY STRING
var emptyString = ""

if emptyString.isEmpty {
    print("Your string is empty")
}

//CONCATENATION AND INTERPOLATION
let string1 = "hello"
let string2 = " world"
let greeting = string1 + string2

let name = "rick"
let age = 30
print("The name is: \(name) and the age: \(age)")

//STRING EQUALITY AND COMPARISONS
let named = "Malcolm Harrison"
if named.lowercased() == "MaLcoLm HARRison".lowercased(){
    print("They are equals")
}

let hola = "hola, mundo"
print(hola.hasPrefix("hola"))
print(hola.hasSuffix("mundo"))

let saludo = "hola, mi nombre es Abraham"
if saludo.contains("mi nombre es"){
    print("This is an introduction: \(saludo)")
}


let cuenta = "Ricardo"
print("Tu nombre tiene: \(cuenta.count) caracteres")


//FUNCTIONS

func displayPi(){
    print("3.1415")
}
displayPi()

func triple(value: Int){
    let result = value * 3
    print("The triple of \(value) is: \(result)")
}
triple(value: 10)

func multiply(firstNumber: Int , secondNumber: Int){
    let result = firstNumber * secondNumber
    print("The result of \(firstNumber) * \(secondNumber) = \(result)")
}
multiply(firstNumber: 10, secondNumber: 5)

func sayHello(to person: String , and anotherPerson: String){
    print("Hello \(person) and \(anotherPerson)")
}

sayHello(to: "Abraham", and: "Jade")

func display(name: String, score: Int = 0){
    print("Name: \(name) and the score: \(score)")
}

display(name: "Umpa-Loompas", score: 5)
display(name: "Cafetas")


func multiplication(first: Int, second: Int) -> Int {
    return first * second
}
print("The multiplication is: \(multiplication(first: 10, second: 10))")


//STRUCTURES

struct Person {
    var name: String
    func sayHello(){
        print("Hi \(name)")
    }
}
let names = Person(name: "Rosa")
names.sayHello()

struct Instrument {
    var name: String
    var color: String
    var strings: Int
    
    func executeJazz(){
        
    }
    
    func executeMambo(){
        
    }
}

let guitar = Instrument(name: "guitar", color: "blue", strings: 6)
guitar.executeJazz()

let violin = Instrument(name: "violin", color: "black", strings: 4)
violin.executeMambo()


//Memberwise initializer and custom initializer
struct Temperature {
    var celcius: Double
    
    init(celcius: Double) {
        self.celcius = celcius
    }
    
    init(farenheit: Double) {
        celcius = (farenheit - 32) / 1.8
    }
}

let currentTemperature = Temperature(celcius: 18.25)
let farenheitTemperature = Temperature(farenheit: 212.35)

print(currentTemperature.celcius)
print(farenheitTemperature.celcius)


struct Area{
    var alto: Double
    var ancho: Double
    
    func calculaArea() -> Double{
        return alto * ancho
    }
}

let figura = Area(alto: 10.50, ancho: 3.25)
let area = figura.calculaArea()


struct Odometer{
    var count: Int = 0
    
    mutating func increment(){
        count += 1
    }
    
    mutating func increment(by amount: Int){
        count += amount
    }
    
    mutating func reset(){
        count = 0
    }
}

var odometer = Odometer()
odometer.increment()
odometer.increment(by: 32)
odometer.reset()

//COMPUTED PROPERTIES
struct Temp {
    var celcius: Double
    
    var farenheit: Double{
        return celcius * 1.8 + 32
    }
    
    var kelvin: Double{
        return celcius + 273.15
    }
}

let currentTem = Temp(celcius: 0.0)
print(currentTem.farenheit)
print(currentTem.kelvin)


//PROPERTY OBSERVERS

struct StepCounter{
    var totalSteps: Int = 0 {
        willSet{
            print("Total Steps: \(newValue)")
        }
        didSet{
            if(totalSteps > oldValue){
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
var step = StepCounter()
step.totalSteps = 40
step.totalSteps = 100


//TYPE PROPERTIES AND METHODS

//STATIC
struct Violin{
    static var strings: Int = 4
}

//ABSOLUTE VALUE
let absolute = abs(-4.14)


//SELF
struct Car{
    var color: String
    
    var description: String {
        return "This is a \(self.color) car"
    }
}


//CLASSES AND INHERITANCE

class Man{
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func hello(){
        print("Hi!")
    }
}

let man = Man(name: "Juan Valdez")
man.hello()
print(man.name)


//DEFINING A BASE CLASS (A CLASS THAT DOESN'T NEED INHERIT OF A SUPERCLASS)
class Vehicle {
    var speed: Double = 0.0
    
    var description: String{
        return "Traveling at \(speed) km per hour"
    }
    
    func makeSomeNoise(){
        //This method returns something :v
    }
}

//let vehicleSpeed = Vehicle()
//vehicleSpeed.speed = 100
//print(vehicleSpeed.description)

//SUBCLASS
class Bicycle : Vehicle {
    var hasBasket = false
}

//let bicycle = Bicycle()
//bicycle.hasBasket = true
//bicycle.speed = 30
//print(bicycle.description)

//OVERRIDE METHODS AND PROPERTIES
class Train: Vehicle{
    
    var doors: Int = 80
    
    override var description: String{
        return super.description + " with \(doors) doors"
    }
    
    override func makeSomeNoise() {
        print("CHOOO CHOOO!!!")
    }
}

let train = Train()
train.makeSomeNoise()
train.speed = 150
print(train.description)

//OVERRIDE INITIALIZER
class Personal {
    var type: String
    
    init(type: String) {
        self.type = type
    }
}

class Student: Personal{
    var favoriteSubject: String
    
    init(type: String,favoriteSubject: String){
        self.favoriteSubject = favoriteSubject
        super.init(type: type)
    }
}

//REFERENCES PAGES 164-165 APP DEVELOPMENT WITH SWIFT


//COLLECTIONS


//ARRAYS

let numbers: [Int] = [1,2,3,4,5]

if numbers.contains(5){
    print("It actually exists!")
}

//array with 100 zeros
var myArray = [Int](repeating: 0, count: 100)

let count = myArray.count
if myArray.isEmpty{
}

//INSERTING AND DELETING VALUES
var boys = ["John"]
boys.append("Jackson")
boys += ["Richard", "Constantine"]
boys.insert("Luca", at: 0)
print(boys)
boys.remove(at: 0)
boys.removeLast()
print(boys)
boys.removeAll()
print(boys)


//DICTIONARIES
var scores = ["Abraham" : 100, "Jocabeth": 200, "Jade": 300]
//ADD, REMOVE OR MODIFY A DICTIONARY
scores["Oli"] = 400
let oldValue = scores.updateValue(50, forKey: "Abraham")
print("Abraham's old value is: \(String(describing: oldValue))")

//remove
scores["Abraham"] = nil
if let oldValue = scores.removeValue(forKey: "Abraham"){
    print("The old value was: \(oldValue) before he stopped playing")
}

//Accessing dictionarie
let players = Array(scores.keys)
let nums = Array(scores.values)

if let myScores = scores["Jocabeth"]{
    print("The value of Jocabeth is: \(myScores)")
}



//LOOPS

//FOR

for index in 1...5{
    print("number: \(index)")
}

for _ in 1...3{
    print("Hello!")
}

let girls = ["Valentine", "Maria", "Catelyn"]
for name in girls{
    print(name)
}

for (index, letters) in "ABCD".characters.enumerated(){
    print("\(index): \(letters)")
}

//for with dictionarie

var instrums = ["violin":4,"guitar":6]
for (nameInstrum,numberStrings) in instrums{
    print("\(nameInstrum) with \(numberStrings) Strings")
}

//while loop
var lives = 3
var stillAlive = true
while stillAlive{
    if lives > 0{
        lives -= 1
    }
    if lives == 0{
        stillAlive = false
    }
}
