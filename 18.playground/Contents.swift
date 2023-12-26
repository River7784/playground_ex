import UIKit

//클로저의 사용
//sum이라는 상수에 클로저를 할당
let sum: (Int, Int) -> Int = {
    (a: Int, b: Int) in
    return a + b
}
let result: Int = sum(3, 5)
print(result)


//함수의 전달인자로서의 클로저
//클로저는 주로 함수의 전달인자로 많이 사용함, 함수 내부에서 원하는 코드블럭을 실행 할 수 있음

//더하기
let add: (Int, Int) -> Int
add = {
    (a: Int, b: Int) in
    return a + b
}

//빼기
let substract: (Int, Int) -> Int
substract = {
    (a: Int, b: Int) in
    return a - b
}

//나누기
let divide: (Int, Int) -> Int
divide = {
    (a: Int, b:Int) in
    return a / b
}

//계산함수
func calc(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int
calculated = calc(a: 50, b: 10, method: add)
print(calculated)

calculated = calc(a: 50, b: 10, method: substract)
print(calculated)

calculated = calc(a: 50, b: 10, method: divide)
print(calculated)

//따로 클로저를 상수/변수에 넣어 전달하지 않고, 함수를 호출시 클로저를 작성하여 전달할 수도 있음
calculated = calc(a: 50, b: 10, method: {(left: Int, right: Int) -> Int in
        return left * right
})
print(calculated)
