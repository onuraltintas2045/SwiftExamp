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

func testSerialQueueDeadlock() {
    let serialQueue = DispatchQueue(label: "serialQueue")

    serialQueue.async {
        print("serial async 1")
        serialQueue.sync {
            print("serial sync 2")
        }
    }
}

func testGlobalQueueDeadlock() {
    DispatchQueue.global().async {
        print("global async 1")
        DispatchQueue.global().sync {
            print("global sync 2")
        }
    }
}

func testMainQueueDeadlock() {
    DispatchQueue.main.async {
        print("main async 1")
        DispatchQueue.main.sync {
            print("main sync 2")
        }
    }
}

isPolindrome("ayak")


func isPolindrome(_ input: String) -> Bool {
    let lowerCasedInput = input.lowercased()
    return lowerCasedInput == String(lowerCasedInput.reversed())
}


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



var nums = [1,2,3,4,5]

filterNums(nums: nums)

func filterNums(nums: [Int]) -> [Int] {
    let filteredNums = nums.filter( { $0 % 2 == 1})
    return filteredNums
}


var str = "   T  e  s  t  "
filterSpaces(str: str)

func filterSpaces(str: String) -> String {
    let filteredString = str.filter ( { $0 != " " } )
    return filteredString
}
*/


