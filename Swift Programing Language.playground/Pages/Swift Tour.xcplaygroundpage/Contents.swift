//: [Previous](@previous)

import Foundation

// assign using if/else in swift 6
/*
    let score = if condition {
        20
    } else {
        100
    }
*/

// switch case
let vegetable = "red pepper"

switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"): // <--
    print("Is it a spicy \(x)?")
case let x where x.hasPrefix("red"):
    print("Is it a red pizza \(x)?")
default:
    print("Everything tastes good in soup.")
}

// for in with dictionary
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

for (type, nums) in interestingNumbers {
    print(type,":", nums)
}


// concurrency
func fetchUserId(from server: String) async -> Int {
    if server == "primary" {
        return 100
    }
    return 51
}

func fetchUsername(from server: String) async -> String {
    let userId = await fetchUserId(from: server)
    if userId == 100 {
        return "Apple"
    }
    return "Guest"
}

func connectUser(to server: String) async {
    async let userId = fetchUserId(from: server)
    async let username = fetchUsername(from: server)
    let greeting = await "Hello \(username), user id \(userId)"
    print(greeting)
}

func joinUser(to server: String) {
    print("Joining...")
    Task {
        await connectUser(to: server)
    }
    print("End")
}

joinUser(to: "primary")

//: [Next](@next)
