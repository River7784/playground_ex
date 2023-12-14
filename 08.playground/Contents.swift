import UIKit

//MARK: - 함수의 선언

//MARK: - 함수선언의 기본형태
//func 함수이름(매개변수1이름: 매개변수1타입, 배개변수2이름: 매개변수2타입 ...) -> 반환타입{
//  함수 구현부
//  return 반환값
//}

func sum(a: Int, b: Int) -> Int {
    return a + b
}

func printMyName(name: String) -> Void {
    print(name)
}

func printYourName(name: String) {
    print(name)
}

func maximumIntegerValue() -> Int{
    return Int.max
}

func hello() -> Void{
    print("hello")
}
func bye() {
    print("bye")
}

sum(a: 3, b: 5)
printMyName(name: "River")
printYourName(name: "Ann")
maximumIntegerValue()
hello()
bye()
