import UIKit

//학생클래스

class Student{
    //가변 프로퍼티
    var name: String = "unknown"
    
    // 키워드도 `로 묶어주면 이름으로 사용할 수 있음
    var `class`: String = "Swift"
    
    //타입 메서드
    class func selfIntroduce() {
        print("학생타입입니다.")
    }
    
    //인스턴스 메서드
    //self는 인스턴스 자신을 지칭, 몇몇 경우를 제외하고 사용은 선택사항
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

//타입 메서드 사용
Student.selfIntroduce()

//인스턴스 생성
var garam: Student = Student()
garam.name = "garam"
garam.class = "스위프트"
garam.selfIntroduce()

//인스턴스 생성
let Ann: Student = Student()
Ann.name = "Ann"
Ann.selfIntroduce()
