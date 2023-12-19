import UIKit

//MARK: - 학생 구조체
struct Student {
    //가변 프로퍼티
    var name: String = "unknown"
    
    // 키워드도 ``로 묶어주면 이름으로 사용 가능
    var `class`: String = "Swift"
    
    //타입 메서드
    static func selfIntroduce(){
        print("학생타입입니다.")
    }
    
    //인스턴스 메서드
    //self는 인스턴스 자신을 지칭, 몇몇 경우를 제외하고 사용은 선택사항임
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

//타입 메서드 사용
Student.selfIntroduce() //학생타입

//가변 인스턴스 생성
var garam: Student = Student()
garam.name = "River"
garam.class = "스위프트"
garam.selfIntroduce()

//불변 인스턴스 생성
let Ann: Student = Student();

//불변 인스턴스이므로 프로퍼티 값 변경 불가
//컴파일 오류 발생
//Ann.name = "Ann"
Ann.selfIntroduce()
