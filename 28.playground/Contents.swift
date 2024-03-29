import UIKit

//MARK: - 타입 캐스팅

class Person{
    var name: String = ""
    func breath(){
        print("숨을 쉽니다.")
    }
}
class Student: Person {
    var school: String = ""
    func goToSchool() {
        print("등교를 합니다.")
    }
}
class UniversityStudent: Student {
    var major: String = ""
    func goToMt() {
        print("MT를 갑니다.")
    }
}

//인스턴스 생성
var river: Person = Person()
var ann: Student = Student()
var james: UniversityStudent = UniversityStudent()

//타입 확인
//is를 사용한다.

var result: Bool
result = river is Person
result = river is Student
result = river is UniversityStudent

result = ann is Person
result = ann is Student
result = ann is UniversityStudent

result = james is Person
result = james is Student
result = james is UniversityStudent

if river is UniversityStudent{
    print("river는 대학생입니다.")
}else if river is Student{
    print("river는 학생입니다.")
}else if river is UniversityStudent{
    print("river는 사람입니다.")
}

switch james{
case is Person:
    print("james는 사람입니다.")
case is Student:
    print("james는 학생입니다.")
case is UniversityStudent:
    print("james는 대학생입니다.")
default:
    print("james는 아무것도 아닙니다.")
}
switch james{
case is UniversityStudent:
    print("james는 대학생입니다.")
case is Student:
    print("james는 학생입니다.")
case is Person:
    print("james는 사람입니다.")
default:
    print("james는 아무것도 아닙니다.")
}

//MARK: - 업캐스팅
//universitystudent 인스턴스를 생성하여 person 행세를 할 수 있도록 업 캐스팅
var mike: Person = UniversityStudent() as Person
var jenny: Student = Student()
var jina: Any = Person()

//MARK: - 다운캐스팅
var optionalCasted: Student?
optionalCasted = mike as? UniversityStudent
optionalCasted = jenny as? UniversityStudent
optionalCasted = jina as? UniversityStudent
optionalCasted = jina as? Student

//MARK: - 강제 다운 캐스팅
var forcedCasted: Student
forcedCasted = mike as! UniversityStudent

//활용
func doSomethingWithSwitch(someone: Person) {
    switch someone{
    case is UniversityStudent:
        (someone as! UniversityStudent).goToMt()
    case is Student:
        (someone as! UniversityStudent).goToSchool()
    case is Person:
        (someone as! Person).breath()
    }
}
doSomethingWithSwitch(someone: mike as Perosn)
doSomethingWithSwitch(someone: mike)
doSomethingWithSwitch(someone: jenny)
doSomethingWithSwitch(someone: river)
func doSomething(someone: Person){
    if let universityStudent = someone as? UniversityStudent {
        universityStudent.goToMt()
    }else if let student = someone as? Student {
        student.goToSchool()
    }else if let person = someone as? Person{
        person.breath()
    }
}

doSomething(someone: mike as Person)
doSomething(someone: mike)
doSomething(someone: jenny)
doSomething(someone: river)
