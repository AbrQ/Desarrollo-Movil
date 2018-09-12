//: Playground - noun: a place where people can play

import UIKit

//CLOSURES: MAP

let names = ["Abe", "Joca", "Jade", "Jav"]

/*let fullNames = names.map{(name) -> String in
    return name + " Smith"
}*/

let fullNames = names.map{$0 + " smith"}

//FILTER

let numbers = [1,4,7,9,23,45]

let numbersLessThan20 = numbers.filter{(number) -> Bool in
    return number < 20
}

let filterLessThan20 = numbers.filter{$0 < 20}

//REDUCE

/*let sum = numbers.reduce(0){ (currentTotal, newValue) -> Int in
    return currentTotal + newValue
}
print(sum)*/

let sum = numbers.reduce(0, {$0 + $1})
print(sum)

//EXTENSIONS

