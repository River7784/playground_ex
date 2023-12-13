import UIKit

let age: Int = 10

"저는 \(age)살입니다."
print("저는 \(age)살 입니다.")

class Person {
    var name: String = "Garam"
    var age: Int = 27
}


//상수와 변수
//상수 let
//변수 var

//상수의 선언 let 이름: 타입 = 값
//변수의 선언 var 이름: 타입 = 값

var constant: String = "차후에 값 변경이 불가능한 상수 let"
var variable: String = "차후에 값 변경이 가능한 변수 var"

variable = "이렇게 값 변경이 가능합니다."
//constant = "이건 변경 불가"

let sum: Int
let inputA: Int = 100
let inputB: Int = 200

//선언 후 첫 값 세팅
sum = inputA + inputB

print(sum)

//상수 선언이라 값 변경이 불가해서 오류 발생
//sum = 1

var nickname: String

nickname = "River"
print(nickname)

nickname = "리버"
print(nickname)
