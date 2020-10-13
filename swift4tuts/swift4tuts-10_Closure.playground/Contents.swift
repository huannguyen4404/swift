import UIKit

var heroes = ["Emily", "TelAnnas", "Viole", "Zuka", "Krixi", "Gidur", "Alice"]
var sortedHeroes = heroes.sorted(by: {
    (str1: String, str2: String) -> Bool in
    return str1 < str2
    //    $0 > $1
})
//print("SortedHerores = \(sortedHeroes)")

func handleSort(str1: String, str2: String) -> Bool {
    return str1 > str2
}
var sortedHeroesDesc = heroes.sorted(by: handleSort)
//print("SortedHerores = \(sortedHeroesDesc)")

let nums = [1, 2, 4, 6, 7, 8, 9]
/*
 var squaredNums = nums.map{
 (num) -> Int in
 return num * num
 
 }
 */
var strings = nums.map {(num) -> String in
    return "\(num) points"
}
print("strings: \(strings)")
/*
func doTask1(onCompletCallback: @escaping(_ responseStr: String, _ errorCode: Int) -> Void) {
    print("do task 1")
    onCompletCallback("success", 200)
}

doTask1 { (responseStr, errCode) in
    print("Task1 Result: ResponseStr=\(responseStr), errorCode=\(errCode)")
    print("Do after task 1.")
}

let doHeavyTask = {
    print("Process for heavy weight task.")
}
let anotherHeavyTask = doHeavyTask
print("Do task A")
//doHeavyTask()
anotherHeavyTask()
*/
func doSomeTasks(heavyTask: @autoclosure() -> Void) {
    print("before closure")
    heavyTask()
}
doSomeTasks(heavyTask: print("Doing heavy task, Inside autoclosure."))
