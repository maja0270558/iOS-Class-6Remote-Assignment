

import Foundation

/*
 1.Please create an empty array with String data type and save it in a variable namedmyFriends.
 */

var myFriends = [String]()

/*
 2.I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name in tomyFriends array.
 */

myFriends += ["Ian","Bomi","Kevin"]

/*
 3.I forget to add ‘Michael’ who is one of my best friend. Please help me to add Michael tothe end of myFriends array.
 */
myFriends.append("Michael")

/*
 4.Because I usually hang out with Kevin, please move Kevin to the begin of the myFriendsarray.
 */
myFriends.remove(at: myFriends.index(of: "Kevin")!)
myFriends.insert("Kevin", at: 0)

/*
 5.Use for...each to print all the friend in myFriendsarray.
 */
myFriends.forEach { (str) in
    print(str)
}
/*
 6.Now I want to know who is at index 5 in the myFriends array. Find the answer for me.
 Please explain how do you get your answer and why the answer is it
 */

print(myFriends.count)
//沒人
//因為陣列長度只有4

//----------------------------------------------------------------
//Dictionary

/*
 1.Please create an dictionary with keys of type String, value of type Int, and save it in avariable named myCountryNumber
 */
var myCountryNumber = [String:Int]()

/*
 2.Please add three keys ‘US’, ‘GB’, ‘JP’ with values 1, 44 , 81.
 */
myCountryNumber = ["US":1,"GB":44,"JP":81]

/*
 3.Remove ‘US’ key-value pair from myCountryNumber dictionary.
 */
myCountryNumber.removeValue(forKey: "US")

/*
 4.Change the ‘GB’ value from 44 to 0.
 */
myCountryNumber["GB"] = 0

/*
 5.Please find a method to get all keys from myCountryNumber and a method to get allvalues from myCountryNumber.
 */
let allKeys = Array(myCountryNumber.keys)
let value = Array(myCountryNumber.values)


//----------------------------------------------------------------
//For, While, Repeat
/*
 1.Please use for-in loop to print the myFriends array and myCountryNumber dictionary (bothkey and value).
 */
for (key,value) in myCountryNumber {
    print ("key: \(key) , value: \(value)")
}
/*
 2.Here is an array:let​ lottoNumbers = [​10​, ​9​, ​8​, ​7​, ​6​, ​5​]
 Please use for-in loop and Range to print the last three members in the lottoNumbersarray.
 */
let lottoNumbers = [10,9,8,7,6,5]
let max = lottoNumbers.count-1
for number in lottoNumbers[max-2...max]{
    print (number)
}
/*
 3.When use for-in loop, we make the computer do the same thing multiple times. But theindex in for-in loop is increasing by 1. What if we want to decreasing by -1 ? What if wewant to increasing by 2 ?
 Please use loop to get the result in the console :
 5
 6
 7
 8
 9
 10
 
 10
 8
 6
 Please find a method which can help us achieve these requirements.
 */
for i in stride(from: 5, through: 10, by: 1) {
    print(i)
}
for i in stride(from: 10, through: 6, by: -2) {
    print(i)
}

/*
 4.Please use while loop to solve above question.
 */
var index = 5

while index <= 10{
    print(index)
    index+=1
}

var index2 = 10
while index2 >= 6{
    print(index2)
    index2-=2
}

/*
 5.Please use repeat-while loop to solve above question (except 4).
 */

var index3 = 5

repeat{
    print(index3)
    index3+=1
}
    while index3 <= 10

var index4 = 10
repeat{
    print(index4)
    index4-=2
}while  index4 >= 6

//----------------------------------------------------------------
//If statement

/*
 1.Here is variable isRaining to record the weather.
 Please write a statement that if theweather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Althoughit’s sunny, I still don’t want to work today.”
 */
var isRaining: Bool = true
if isRaining {
    print("It’s raining, I don’t want to work today.")
}else {
    print("Althoughit’s sunny, I still don’t want to work today.")
}

//----------------------------------------------------------------
//Switch statement

/*
 1.In a company, we usually use number to represent job level. Let’s make a sample. We have four job levels : Member, Team Leader, Manager, Director. We use 1 to presentMember, 2 to Team Leader, 3 to Manager, 4 to Director.Create a variable name jobLevel and assign a number to it. If jobLevel number is in ourlist, print the relative job title name. If not, just print “We don't have this job”. Please useswitch statement to achieve this requirement.
 */

var jobLevel : Int = 1
switch jobLevel {
case 1: print("presentMember")
case 2: print("Team Leader")
case 3: print("Manager")
case 4: print("Director.Create")
default: print("We don't have this job")
}

