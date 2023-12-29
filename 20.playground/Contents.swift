import UIKit

//MARK: - 프로퍼티
/*
 프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있음, 다만 열거형 내부에는 연산 프로퍼티만 구현가능.
 연산 프로퍼티는 var로만 선언
 연산 프로퍼티를 읽기전용으로는 구현할 수 있지만, 쓰기 전용으로는 불가.
 읽기 전용으로 구현하려면 get 블록만 작성하면 됨.
 읽기전용 set 블록에서 암시적 매개변수 newValue를 사용 할 수 있음
 */

struct Student {
    //인스턴스 저장 프로퍼티
    var name: String = ""
    var `class`: String = "Swift"
    var koreanAge: Int = 0
    
    //인스턴스 연산 프로퍼티
    var internationalAge: Int {
        get{
            return koreanAge - 1
        }
        set(inputValue){
            koreanAge = inputValue + 1
        }
    }
    
    //타입 저장 프로퍼티
    static var typeDescription: String = "학생"
    /*
    // 인스턴스 메서드
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
    */
    // 읽기전용 인스턴스 연산 프로퍼티
    // 간단히 위의 selfIntroduce() 메서드를 대체할 수 있습니다
    var selfIntroduction: String {
        get {
            return "저는 \(self.class)반 \(name)입니다"
        }
    }
    /*
    // 타입 메서드
    static func selfIntroduce() {
    print("학생타입입니다")
    }
    */
    // 읽기전용 타입 연산 프로퍼티
    // 읽기전용에서는 get을 생략할 수 있습니다
    static var selfIntroduction: String {
        return "학생타입입니다"
    }
}

//타입 연산 프로퍼티 사용
print(Student.selfIntroduction)
// 학생타입입니다.
// 인스턴스 생성
var river: Student = Student()
river.koreanAge = 27
//인스턴스 저장 프로퍼티 사용
river.name = "river"
print(river.name)
//인스턴스 연산 프로퍼티 사용
print(river.selfIntroduction)
print("제 한국나이는 \(river.koreanAge)살이고, 만나이는 \(river.internationalAge)살입니다.")
