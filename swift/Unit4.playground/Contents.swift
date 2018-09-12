//: Playground - noun: a place where people can play

import UIKit


//PROTOCOL: CustomStringConvertible

class Shoe: CustomStringConvertible{
    var color: String
    var size: Int
    var hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
    
    var description: String{
        let doesOrNot = hasLaces ? "Does" : "Does not"
        return "Shoe(The color is: \(color), size: \(size), and: \(doesOrNot) have laces"
    }
}

let myShoe = Shoe(color: "Red", size: 8, hasLaces: false)
let yourShoe = Shoe(color: "Blue", size: 5, hasLaces: true)

print(myShoe)
print(yourShoe)



//PROTOCOL: Equatable, Comparable, Codable

struct Employee: Equatable, Comparable{
    
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
    
    static func ==(lhs: Employee, rhs: Employee) -> Bool{
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName && lhs.jobTitle == rhs.jobTitle && lhs.phoneNumber == rhs.phoneNumber
    }
    
    static func <(lhs: Employee, rhs: Employee) -> Bool{
        return lhs.lastName < rhs.lastName
    }
}

let currentEmployee = Employee(firstName: "Abraham", lastName: "Quezada", jobTitle: "Programmer", phoneNumber: "5539049760")

let selectedEmployee = Employee(firstName: "Abraham", lastName: "Quezada", jobTitle: "DBA", phoneNumber: "5539049760")

if currentEmployee == selectedEmployee{
    print("They are equals")
} else{
    print("They are not equals")
}



let employee1 = Employee(firstName: "Ben", lastName: "Atkins",
                         jobTitle: "Front Desk", phoneNumber: "415-555-7767")
let employee2 = Employee(firstName: "Vera", lastName: "Carr",
                         jobTitle: "CEO", phoneNumber: "415-555-7768")
let employee3 = Employee(firstName: "Grant", lastName: "Phelps",
                         jobTitle: "Senior Manager", phoneNumber: "415-555-7770")
let employee4 = Employee(firstName: "Sang", lastName: "Han",
                         jobTitle: "Accountant", phoneNumber: "415-555-7771")
let employee5 = Employee(firstName: "Daren", lastName:
    "Estrada", jobTitle: "Sales Lead", phoneNumber: "415-555-7772")


let employees = [employee1, employee2, employee3, employee4, employee5]


let sortedEmployees = employees.sorted(by: <)

for employee in sortedEmployees{
    print(employee)
}



//CREATING A PROTOCOL

protocol FullyNamed{
    var fullName: String { get }
    
    func sayYourName()
}

struct Person: FullyNamed{
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return "First name: \(firstName), Last name: \(lastName)"
    }
    
    func sayYourName() {
        print(fullName)
    }
}


