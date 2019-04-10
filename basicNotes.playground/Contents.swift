import UIKit

// explicit and implicit example
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble:Double = 70

print(explicitDouble)

let explicitFloat:Float = 4

print(explicitFloat)

// a variable never implicitly converted into another type
let label = "The label is: "
let width = 94

print(label + String(width))

let apples:Float = 3
let oranges:Float = 5

print("My fruit total is: \(apples + oranges)")





// use """ to make a multiple line string
let quotation = """
    This is an example
of how a quotation is being
used. And yes I have many
friuits, in fact I got \(apples + oranges)
fruits!
"""

print(quotation)






// Arrays

var shoppingList = ["Meat", "Potatoes", "Corn"]

print(shoppingList)

shoppingList[1] = "Tomatoes"

print(shoppingList)

shoppingList.append("Red beans")

print(shoppingList)






// Dictionary

var occupations = [
    "Fauzi":"Entrepreneur",
    "Reyhan":"Software Engineer",
    "Gilang":"Mobile Engineer"
]

occupations["Nadia"] = "Designer"

print(occupations.values)
print(occupations.keys)





// create empty array and dictiionary

var emptyArray = [String]()
var emptyDic = [String:Float]()

print(emptyArray)




// For loop

let individualScore = [30, 50, 70, 2, 8, 7, 10]
var teamScore = 0

for score in individualScore {
    if score < 10 {
        teamScore += 3
    } else {
        teamScore += 5
    }
}
print(teamScore)







// if and let working together to work with values that might be missing(optional value)

let optionalString : String? = "Hello"

print(optionalString == "Fauzi") // if you put nil in it the condition is false and the code is                                 skipped

let optionalName : String? = "Fauzi"
var greeting = "Helo"

if let name = optionalName {
    greeting = "Hello \(name)"
}
print(greeting)

// use ?? “If the optional value is missing, the default value is used instead.”

let nickName : String? = nil
let fullName : String = "Fauzi Rizal"

let informalGreeting = "Hi \(nickName ?? fullName)"

print(informalGreeting)





// switches support any kind of data a wide variety of comparison

let sayurBayam = "pete blabla"

switch sayurBayam {
case "bayam":
    print("Enak nggak bayamnya?")
case "bawang merah", "bawang putih":
    print("Awas bau ketek")
case let x where x.hasSuffix("blabla"):
    print("apaan tuh \(x)?")
default:
    print("Everything taste good if you cook it with perfect combination")
}







// using for-in in a dictionary
// dictionary is an unordered list

let interestingNumbers = [
    "Prime" : [2, 3, 5, 7, 11, 13],
    "Fibonacci" : [1, 1, 2, 3, 5, 8],
    "Square" : [1, 4, 9, 16, 25]
]

var largest = 0

for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)







// while loop

var n = 2

while n < 100 {
    n *= 2
}
print(n)

// or

var m = 2

repeat {
    m *= 2
} while m < 100

print(m)






// keep an index in a loop

var total = 0

for i in 0..<4 {
    total += i
}

print(total)






// function

func greet(person: String, day: String) -> String{
    return "Hello \(person), today is \(day)"
}

print(greet(person: "Bob", day: "Friday"))

// use _ to use no argument label

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}

print(greet("Neo", on: "Saturday"))


func calculateStatistic(scores : [Int]) ->
    (min: Int, max: Int, sum: Int) {
        var max = scores[0]
        var min = scores[0]
        var sum = 0
        
        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score
            }
            sum += score
        }
        return (min, max, sum)
}

let statistics = calculateStatistic(scores: [5, 3, 100, 3, 9])

print(statistics.2)

// nested function

func returnFifteen() -> Int {
    var y = 10
    
    func addFive() {
        y += 5
    }
    
    addFive()
    return y
}

print(returnFifteen())

// function can return another function to it's value
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(Number: Int) -> Int {
        return Number + 1
    }
    
    return addOne
    
}
var increment = makeIncrementer()

print(increment(7))


// a fucntion can take another function as one of it's arguments

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessthanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]

hasAnyMatches(list: numbers, condition: lessthanTen)

// write a closure without a name using ({})
numbers.map({ (number: Int) -> Int in
    var result = 0
    if number % 2 == 1 {
        result = 0
    } else {
    result = 3 * number
    }
    return result
    
})

// another type of closure
let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)

// sorting arrays
let sortedNumebers = numbers.sorted {$0 < $1}
print(sortedNumebers)





// class

class Spaceship {
    var fuelLevel = 50
    
    func cruise() {
        return fuelLevel -= 5
    }
    
    func thrust() {
        return fuelLevel -= 20
    }
}

var ship = Spaceship()
ship.cruise()


class UFO: Spaceship {
    
    override func cruise() {
        super.cruise()
        print("UFO cruise!")
    }
    
    override func thrust() {
        print("UFO go!")
    }
}

var ufo = UFO()
// print(ufo.fuelLevel)
ufo.cruise()
ufo.thrust()


// class follows with optional binding

class People {
    var name = ""
    
}

class BlogPost {
    
    var title: String?
    var body = "Hey"
    var author: People?
    var numberOfComments = 0
}

let post = BlogPost()

print(post.body + " Hello")




// the optional binding
post.title = "yo"
    // optional contains value
if let actualTitle = post.title {
    print(actualTitle + " salute")
}


// use post.title!, the "!" is used to force unpack
// can't use it if the value is nil
print(post.title! + " salut")


// Testing for nil
if post.title != nil {
    // optional contains value
    print(post.title! + " salut")
}
if post.title == nil {
    // optional contains no value
    
}




// enum (to store many possible value)


enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snowy
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .cloud:
        return "really cloudy eh?"
    case .sun:
        return "it's a sunny day!"
    case .rain:
        return "hmm I like rain"
    case .wind(let speed) where speed < 10:
        return "meh"
    case .wind, .snowy:
        return "siap2 masuk angin"
    }
}


getHaterStatus(weather: WeatherType.rain)



// Struct

struct Person {
    var shoes: String
    var clothes: String
    
    func wearThem() -> String {
        return "I like to wear \(shoes) with \(clothes)"
    }
}


var firstPerson = Person(shoes: "Air Jordan", clothes: "Gucci")
var secondPerson = Person(shoes: "Nike", clothes: "Prada")

print(firstPerson.wearThem())

firstPerson.clothes = "Versace"

print(firstPerson.wearThem())



// 
