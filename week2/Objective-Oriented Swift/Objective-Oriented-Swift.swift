
import UIKit

/*
 1.Declare class Animal with property gender, and method eat(). Data type of gender shouldbe enum Gender as list below. Call eat() method will print I eat everything!
 */
enum Gender {
    case male
    case female
    case undefined
}
class Animal  {
    var gender : Gender
    func eat() {
        print("I eat everything")
    }
    init(gender: Gender) {
        self.gender = gender
    }
}
/*
 2.Declare class Elephant, Tiger, Horse inherit from Animal. Override the eat method to printwhat they usually eat.
 */
class Elephant : Animal{
    override func eat() {
        print("I eat grass")
    }
}
class Tiger : Animal{
    override func eat() {
        print("I eat elephant")
    }
}
class Horse : Animal{
    override func eat() {
        print("I eat hay")
    }
}
/*
 3.Declare a class Zoo with property weeklyHot which means the most popular one in thezoo this week. The code list below can’t run correctly. Please solve the problem. Notice that tiger, elephant, horse are instances of class Tiger, Elephant, Horse.
 */
class Zoo {
    var weeklyHot : Animal?
    init() {
        
    }
}
let tiger = Tiger(gender: .female)
let elephant = Elephant(gender: .male)
let horse = Horse(gender: .undefined)
let zoo = Zoo()
zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

