

import UIKit
import Foundation
/*
 1.Declare a struct Person with a name property type String, a protocol name PoliceMan.There is only one method arrestCriminals with no argument and return void in theprotocol.
 */
protocol PoliceMan {
    func arrestCriminals()
}

/*
 3.Declare a protocol ToolMan with a method fixComputer, no argument and return void
 */
protocol ToolMan {
    func fixComputer()
}

struct Person : PoliceMan {
    func arrestCriminals() {
        /*
         2.Make struct Person confirm to PoliceMan protocol.
         */
    }
    /*
     4.Add a property toolMan to struct Person with data type ToolMan.
     */
    var toolMan : ToolMan
    var name : String
}

/*
 5.Declare a struct named Engineer conform to ToolMan protocol.
 */
struct Engineer : ToolMan{
    func fixComputer() {
        
    }
}
/*
 6.Create a Person instance with name Steven. Please create the relative data you need to declare this instance.
 */
let toolMan =  Engineer()
var person = Person(toolMan: toolMan, name: "Honson")
