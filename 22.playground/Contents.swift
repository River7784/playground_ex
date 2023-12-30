import UIKit

//MARK: - 프로퍼티 감시자
struct Money {
    // 프로퍼티 감시자 사용
    var currencyRate: Double = 1400 {
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)로 변경될 예정입니다.")
        }
        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)으로 변경되었습니다.")
        }
    }
    
    //프로퍼티 감시자 사용
    var dollor: Double = 0 {
        //willSet의 암시적 매개변수 이름 newValue
        willSet{
            print("\(dollor)에서 \(newValue)달러로 변경될 예정입니다.")
        }
        
        //didSet의 암시적 매개변수 이름 oldValue
        didSet {
            print("\(oldValue)달러에서 \(dollor)달러로 변경되었습니다.")
        }
    }
    
    //연산 프로퍼티
    var won: Double {
        get{
            return dollor * currencyRate
        }
        set{
            dollor = newValue / currencyRate
        }
        
        /*
         프로퍼티 감시자와 연산 프로퍼티 기능을 동시에 사용할 수 있음
         willSet {
        
         }
         */
    }
}

var myAccount: Money = Money()

myAccount.currencyRate = 1500

myAccount.dollor = 10

print(myAccount.won)

