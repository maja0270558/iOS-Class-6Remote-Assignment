
import UIKit
import Foundation

class GuessNumberGame {
    var targetNumber = 10
    func guess(number : Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}
/*
 1.Please solve the error by adding addition code in the file. Do not remove or modify thecode above.
 */
enum GuessNumberGameError : Error {
    case wrongNumber
}
/*
 2.Call guess(number:) and pass 20 as argument.
 */
let guessNumberGame = GuessNumberGame()
do{
    try guessNumberGame.guess(number: 20)
}catch {
    print(error)
}

