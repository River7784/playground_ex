import UIKit

//MARK: - 상속

// 기반 클래스 Person
class Person {
    var name: String = ""
    func selfIntroduce() {
        print("저는 \(name)입니다.")
    }
    //final을 통해 재정의 방지
    final func sayHello(){
        print("hello")
    }
    //타입 메서드
    //재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    //재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
    //재정의 가능 class 메서드라도 final을 사용하면 재정의 불가(메서드 앞의 'static'과 'final class'는 똑같은 역할
    final class func finalClassMethod() {
        print("type method - final class")
    }
}
//Person을 상속받는 Student
class Student: Person {
    var major: String = ""
    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다.")
    }
    override class func classMethod() {
        print("overriden type method - class")
    }
}

//MARK: - 동작확인
let garam: Person = Person()
let river: Student = Student()
garam.name = "가람"
river.name = "river"
river.major = "Swift"
garam.selfIntroduce()
river.selfIntroduce()

Person.classMethod()
Person.typeMethod()
Person.finalClassMethod()

Student.classMethod()
Student.typeMethod()
Student.finalClassMethod()
