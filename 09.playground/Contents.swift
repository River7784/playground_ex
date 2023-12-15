import UIKit

/*
func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
    /* 함수 구현부 */
    return 반환값
}*/

func greeting(friend: String, me: String = "River") {
    print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수는 호출시 생략가능
greeting(friend: "Ann") // Hello Ann! I'm River
greeting(friend: "Mac", me: "Garam") // Hello Mac! I'm Garam

//MARK: - 전달인자 레이블
func greetingB(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

greetingB(to: "River", from: "Garam")

//MARK: - 가변 매개변수 (전달 받을 값의 개수를 알기 어려울 떄 사용)

func sayHelloToFriends(me: String, friends: String...) -> String{
    return "Hello \(friends)! I'm \(me)!"
}
print(sayHelloToFriends(me: "Garam", friends: "River", "Ann", "Mac"))

//MARK: -함수타입
var someFunction: (String, String) -> Void = greeting(friend:me:)
someFunction("Garam", "River")

someFunction = greeting(friend:me:)
someFunction("Garam", "River")
