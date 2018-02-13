
import UIKit

/*
 1.There are several gasoline types, 92, 95, 98, and diesel. We can use enum to modelthem.
 •  Please create enum named Gasoline to model gasoline.
 •  Every kind of gasoline has price. Please create a method named getPrice in Gasolineenum. The method will return difference price depend on difference gasoline.*/

enum Gasoline : Double {
    case type92 = 26.40
    case type95 = 27.90
    case type98 = 29.90
    case diesel = 24.30
    func getPrice()-> Double{
        return self.rawValue
    }
}
let gas1 = Gasoline.diesel.getPrice()
/*
 .Optional is a very special data type in swift. Take var a: Int? = 10for example, the valueof a will be nil or Int. You should learn how to deal with optional data type.
 •  People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instanceor nil. Please try to figure out what data type is suitable for these properties in Pet andPeople.
 •  Please create a People instance and use guard let to unwrap the pet property.
 •  Please create another People instance and use if let to unwrap the pet property.
 */
class Pet {
    var name: String
    init(name : String){
        self.name = name
    }
}
class People {
    var pet : Pet?
}
let peter = People()
peter.pet = Pet(name: "lil hot dog")
let diablo = People()

func unwrap(question : Int ,wrapTarget : People)->Pet?{
    switch question {
    case 1:
        guard let pet = wrapTarget.pet else {
            return nil
        }
        return pet
    default:
        if let pet = diablo.pet {
            return pet
        }else{
            return nil
        }
    }
}
unwrap(question: 1, wrapTarget: peter)
unwrap(question: 2, wrapTarget: diablo)



