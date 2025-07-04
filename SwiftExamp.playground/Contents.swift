import UIKit
import Foundation

/*
var numbers = [1,7,13,4,5]

print("sorted nums: \(numbers.sorted())")
print("sorted nums: \(numbers.sorted(by: >))")

testSerialQueueDeadlock()
testGlobalQueueDeadlock()
testMainQueueDeadlock()

//Zaten Main threadde olduğumuz için deadlock oluşur
DispatchQueue.main.sync {
    print("deadlock")
}

 //Deadlock
func testSerialQueueDeadlock() {
    let serialQueue = DispatchQueue(label: "serialQueue")

    serialQueue.async {
        print("serial async 1")
        serialQueue.sync {
            print("serial sync 2")
        }
    }
}

 //DeadLock olmaz çünkü globalQueue farklı threadlere gönderir. Teorik olarak mümkün ama çalışır.
func testGlobalQueueDeadlock() {
    DispatchQueue.global().async {
        print("global async 1")
        DispatchQueue.global().sync {
            print("global sync 2")
        }
    }
}
 
 //DeadLock
func testMainQueueDeadlock() {
    DispatchQueue.main.async {
        print("main async 1")
        DispatchQueue.main.sync {
            print("main sync 2")
        }
    }
}
 
 //Polindrome

isPolindrome("ayak")


func isPolindrome(_ input: String) -> Bool {
    let lowerCasedInput = input.lowercased()
    return lowerCasedInput == String(lowerCasedInput.reversed())
}

 
 //Fibonacci

fibonacci(6)

func fibonacci(_ n: Int) -> Int {
    if n <= 1 {
        return n
    }
    
    return fibonacci(n - 1) + fibonacci(n - 2)
}

isAnagram(string1: "listen", string2: "silent")

func isAnagram(string1: String, string2: String) -> Bool {
    guard string1.count == string2.count else {
        return false
    }
    
    return string1.sorted() == string2.sorted()
}

 //Most Frequent

mostFrequentCharacter(word: "aaaarrry")

func mostFrequentCharacter(word: String) -> Character? {
    
    //Long way
    /*
    var dictWord : [String : Int] = [:]
    var maxNum = 0
    var maxChar = ""
    for char in word {
        if let count = dictWord[String(char)] {
            dictWord[String(char)] = count + 1
        } else {
            dictWord[String(char)] = 1
        }
    }
    
    for (char, value) in dictWord {
        if value > maxNum {
            maxNum = value
            maxChar = char
        }
    }
    
    return Character(maxChar)
    */
     
    
    //Short Way
    var frequency: [Character: Int] = [:]
    
    for char in word {
        frequency[char, default: 0] += 1
    }
    
    return frequency.max(by: { $0.value < $1.value})?.key
    
}

 // Target Sum

targetSum(arr: [2, 4, 11, 15, 17], target: 19)

func targetSum(arr: [Int], target: Int) -> [Int]? {
    
    var map: [Int: Int] = [:]
    
    for (index, value) in arr.enumerated() {
        let complement = target - value
        if let matchIndex = map[complement] {
            return [matchIndex, index]
        }
        map[value] = index
    }
    return nil
}


//Map

let nums = [1,2,3,4,5]

let squaredNums = nums.map { $0 * $0 }

print(squaredNums)


struct User {
    let id: Int
    let name: String
}

let users = [User(id: 1, name: "Ahmet"), User(id: 2, name: "Zeynep"), User(id: 3, name: "Mahmut")]

let names = users.map { $0.name }

print("names: \(names)")

// filter Odd numbers

var nums = [1,2,3,4,5]

filterNums(nums: nums)

func filterNums(nums: [Int]) -> [Int] {
    let filteredNums = nums.filter( { $0 % 2 == 1})
    return filteredNums
}

// Filter space character
var str = "   T  e  s  t  "
filterSpacesEasyWay(str: str)

func filterSpaces(str: String) -> String {
    let filteredString = str.filter ( { $0 != " " } )
    return filteredString
}
 
func filterSpacesEasyWay(str: String) -> String {
    let replaceStr = str.replacingOccurrences(of: " ", with: "")
    return replaceStr
}

//First String Uppercase
var str = "professional"

prefStr(str: str)

func prefStr(str: String) -> String {
    guard let strFirst = str.first else { return str }
    
    return strFirst.uppercased() + str.dropFirst()
}



//Reduce
let number = [1, 2, 3, 4, 5]

let reducedNumber = number.reduce(0, +)

print(reducedNumber)


let values = [2, 3, 4]

let multiplyValues = values.reduce(1) { $0 * $1 }

print(multiplyValues)

let words = ["Junior", "iOS", "Developer"]

let reducedWords = words.reduce("") { $0 + " " + $1 }.trimmingCharacters(in: .whitespaces)

let resultOfWords = words.joined(separator: " ")

print("first way = \(reducedWords), second way = \(resultOfWords)")

let scores = [25, 75, 40]

let maxScore = scores.reduce(scores.first ?? 0) { max($0, $1) }

print(maxScore)

*/


let inputs = ["2", "abc", "3", "asd", "5"]
let validInputs = inputs.compactMap { Int($0) }
print(validInputs)

let items = ["I", nil, "want", nil, "iOS", nil, "Developer", "Job", nil]
let nonNilItems = items.compactMap { $0 }
print(nonNilItems.joined(separator: " "))

let dates = ["2025-06-23", "unknown", "2024-07-12", "invalid date", "2025-20-06", "1997.02.26"]
let formatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd"
let validDates: [Date] = dates.compactMap { formatter.date(from: $0) }
print(validDates)
