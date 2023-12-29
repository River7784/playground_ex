import UIKit

//MARK: - 프로퍼티 응용
struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}
var moneyInMyPocket = Money()
moneyInMyPocket.won = 11000
print(moneyInMyPocket.won)
// 11000.0
moneyInMyPocket.dollar = 10
print(moneyInMyPocket.won)
// 11000.0

//MARK: - 지역변수 및 전역변수
//저장 프로퍼티와 연산 프로퍼티의 기능은 함수, 메서드, 클로저, 타입 등의 외부에 위치한 지역/전역 변수에도 모두 사용 가능
var a: Int = 100
var b: Int = 200
var sum: Int {
    return a + b
}
print(sum)
