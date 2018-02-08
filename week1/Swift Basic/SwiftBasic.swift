import Foundation

/*
 1.In swift , we define a variable through the syntax below..​var​ x: ​Int​ = ​10​.That’s practice this syntax :When mentioning about calculating circle’s area, we use the formula:  2 * radius * PI  toget area. Now,
 please define a variable  PI  and assign value to it. You can refer to thesyntax above. But think clearly about using   var  or  let  and which data type you shouldchoose.
 */

let PI:Double = 3.14159265359

/*
 2.Create two constants x and y of type Int and assign with any value.
 Please calculate theaverage of x and y and store the result in a constant named average.
 */

let x : Int = 1
let y : Int = 2
let average = (x+y)/2

/*
 3.Following with Q2, now we want to save the average in the record system, but the systemdoesn’t accept 65 but 65.0.
 ●Please solve this problem so that we can put the average in the record system.
 ●Think about the difference between ( 10 / 3 ) and ( 10 / 3.0 ).
 */

let newAverage = Float(x+y)/2

/*
 4.Swift is a very powerful language. It can infer the data type for you ( Type inference ). Butwe still need to know the basic theory.
 Please mark the data type in the followingstatement:Ex: .​var​ x = ​10​.​ => .​var​ x: ​Int​ = ​10​.
 */

var flag :Bool = true
var inputString :String = "Hello world"
let bitsInBite :Int = 8
let averageScore :Float = 86.8

/*
 5. Compound assignment  operator is very useful when programming.
 Please create  salaryas 22000, and use  addition assignment operator  to add 28000 to salary, and it will be50000 after this process.
 */
var salaryas = 22000
salaryas+=28000

/*
 6.You should notice that  ‘=’  has difference meaning in programming. In real world,  ‘=’means equal. In programming,  ‘=’  means assign. You simply put the right hand side datainto left hand side variable or constant.Now please find the Equality operator in swift, and write a statement to figure out  0  isequal to  false  or not
 */

if(NSNumber(value: false).intValue == 0){
    print("0  is equal to false")
}else{
    print("0  is not equal to false")
}

/*
 7.Declare two constants and the value are 10 and 3, please calculate the remainder andsave the result in a constant remain
 */
let a = 10,b = 3
let remain = a%b


