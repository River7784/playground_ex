import UIKit

// 학교 - 초, 중, 고
enum School{
    case elementry
    case middle
    case high
    case ele, mid, hig
}

let yourSchool = School.hig
print("학교 : \(yourSchool)")
print("학교 :", yourSchool)


//enum은 값을 가질 수 있음
enum Grade : Int {
    case first = 1
    case second = 2
    case third = 3
}

let yourGrade = Grade.second
//해당 case만 호출
print("yourGrade : \(yourGrade)")
//case 값 호출
print("yourGrade : \(yourGrade.rawValue)")


//enum에 데이터 타입으로 값을 저장
enum SchoolDetail{
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    //저장된 값의 데이터만 불러오기
    func getSchoolName() -> String{
        switch self {
        //1번 방법
        case .elementary(let name):
            return name
        //2번 방법
        case let .middle(name):
            return name
        case let .high(name):
            return name
        }
    }
}

let midSchoolName = SchoolDetail.middle(name: "한국중학교")

print("중학교 : \(midSchoolName)")

//SchoolDetail의 메서드 사용(값 추출)
print("중학교 : \(midSchoolName.getSchoolName())")
