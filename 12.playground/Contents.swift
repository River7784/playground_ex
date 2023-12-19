import UIKit

//MARK: - 구조체(struct)
struct Sample {
    //가변 프로퍼티
    var mutableProperty: Int = 100
    
    //불변 프로퍼티
    let immutableProperty: Int = 100
    
    //타입 프로퍼티
    static var typeProperty: Int = 100
    
    //인스턴스 메서트
    func instanceMethod() {
        print("인스턴스 메서드")
    }
    
    //타입 메서드
    static func typeMethod() {
        print("타입메서드")
    }
}
//MARK: - 구조체 사용

//가변인스턴스 생성
var mutable: Sample = Sample()

mutable.mutableProperty = 200

//불변 프로퍼티는 인스턴스 생성 후 수정 불가
//mutable.immutableProperty = 200 오류


//불변인스턴스
let immutable: Sample = Sample()

//불변 인스턴스는 아무리 가변 프로퍼티라도 인스턴스 생성 후 수정 불가
//immutable.mutableProperty = 200  오류
//immutable.immutableProperty = 200  오류

Sample.typeProperty = 300
Sample.typeMethod() //type method

//인스턴스에서는 타입 프로퍼티나 타입 메서드를 사용할 수 없음
