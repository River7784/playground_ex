import UIKit

/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
*/

//MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 저장 가능"
someAny = 123.12

//let someDouble: Double = someAny
//Any로 선언했기에 당연히 타입 변경 안됨

//MARK: - AnyObject

class SomeClass {}
var someAnyObject: AnyObject = SomeClass()

//MARK: - nil

//someAny = nil
//someAnyObject = nil

/*
 nil은 없음을 의미함
 null,NULL,Null과 유사한 표현임
 */
