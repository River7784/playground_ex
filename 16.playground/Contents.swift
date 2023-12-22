import UIKit

/*
enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의함
각 case는 소문자 카멜케이스로 정의함
각 case는 그 자체가 고유의 값
각 케이스는 한 줄에 개별로도, 한 줄에 여러개도 정의할 수 있음
*/

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

// 열거형 타입과 케이스를 모두 사용가능
var day: Weekday = Weekday.mon

// 타입이 명확하다면 .케이스처럼 표현해도 무방함
day = .tue

print(day)


//MARK: - 원시값
// c언어의 enum처럼 정수값을 가질 수 있음 (rawValue를 사용)
// !!case별로 각각 다른 값을 가져야함!!

enum Fruit: Int{
    case apple = 0
    case grape = 1
    case peach
    //원시값이 같은 case는 중복 정의 불가
    //case mango = 0 불가
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")

//정수 타입 뿐 아니라 Hashable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있음

enum School: String{
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case univ
}

print("School.middle.rawValue == \(School.middle.rawValue)")

//열거형의 원시값 타입이 String일 때, 원시값이 지정되지 않았다면 case 이름을 원시값으로 사용
print("School.univ.rawVale == \(School.univ.rawValue)")

//원시값을 통한 초기화
//rawValue를 통해 초기화 할 수 있음, rawValue가 case에 해당하지 않을 수 있으므로 rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입
let apple: Fruit? = Fruit(rawValue: 0)

// if let구문을 사용하면 rawValue에 해당하는 케이스를 곧바로 사용할 수 있음
if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다.")
} else{
    print("rawValue 5에 해당하는 케이스가 없음")
}

//MARK: - 메서드

enum Month{
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self{
        case .mar, .apr, .may:
            print("봄")
        case .jun, .jul, .aug:
            print("여름")
        case .sep, .oct, .nov:
            print("가을")
        case .dec, .jan, .feb:
            print("겨울")
        }
    }
}

Month.mar.printMessage()
