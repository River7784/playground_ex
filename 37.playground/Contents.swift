import UIKit

let numbers: [Int] = [0, 1, 2, 3, 4]
var doubledNumbers: [Int]
var strings: [String]

//MARK: - filter 함수는 컨테이너 내부값을 걸러서 새로운 컨테이너로 추출함

var filtered: [Int] = [Int]()

for number in numbers {
    if number % 2 == 0 {
        filtered.append(number)
    }
}

print(filtered)

//filter 메서드 사용
// numbers의 요소 중 짝수를 걸러내어 새로운 배열로 반환
let evenNumbers: [Int] = numbers.filter { (number: Int) -> Bool in
    return number % 2 == 0
}
print(evenNumbers) // [0, 2, 4]

// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
let oddNumbers: [Int] = numbers.filter {
    $0 % 2 != 0
}
print(oddNumbers) // [1, 3]

//MARK: - reduce
let someNumbers: [Int] = [2, 8, 15]

var result: Int = 0

// someNumbers의 모든 요소를 더함
for number in someNumbers {
    result += number
}

print(result) // 25


//reduce 메서드 사용

// 초깃값이 0이고 someNumbers 내부의 모든 값을 더함
let sum: Int = someNumbers.reduce(0, { (first: Int, second: Int) -> Int in
    //print("\(first) + \(second)")
    return first + second
})

print(sum)  // 25

// 초깃값이 0이고 someNumbers 내부의 모든 값을 뺌
var subtract: Int = someNumbers.reduce(0, { (first: Int, second: Int) -> Int in
    //print("\(first) - \(second)")
    return first - second
})

print(subtract) // -25

// 초깃값이 3이고 someNumbers 내부의 모든 값을 더함
let sumFromThree = someNumbers.reduce(3) { $0 + $1 }

print(sumFromThree) // 28
