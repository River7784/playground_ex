import UIKit

//MARK: - 클래스

//클래스는 참조 타입

class Sample {
    //가변 프로퍼티
    var mutableProperty: Int = 100
    
    //불변 프로퍼티
    let immutableProperty: Int = 100
    
    //타입 프로퍼티
    static var typeProperty: Int = 100
    
    //인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    //타입 메서드
    //재정의 불가 타입 메서드 = static
    static func typeMethod() {
        print("type method - static")
    }
    
    // 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
}

//MARK: - 클래스 사용

//인스턴스 생성 - 참조정보 수정 가능
var mutableReference: Sample = Sample()

mutableReference.mutableProperty = 200

//불변 프로퍼티는 인스언스 생성 후 수정 불가
//mutableReference.immutableProperty = 200

//인스턴스 생성 - 참조정보 수정 불가
let immutableReference: Sample = Sample()

//클래스의 인스턴스는 참조 타입으로 let으로 선언되었더라도 인스턴스 프로퍼티의 값 변경이 가능
immutableReference.mutableProperty = 200

//단, 참조정보는 변경 불가
//immutableReference = mutableReference

//참조 타입이라도 불변 인스턴스는 인스턴스 생성 후 수정 불가
//immutableReference.immutableProperty = 200

//타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() //type method

//인스턴스에서는 타입 프로퍼티나 타입 메서드를 사용할 수 없음
//mutableReference.typeProperty = 400
//mutableReference.typeMethod() =

