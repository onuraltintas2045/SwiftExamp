import UIKit
import Foundation

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


