import UIKit

//MARK: - 옵셔널 체이닝
//옵셔널의 내부의 내부의 내부로 옵셔널이 연결되어 있을 때 유용하게 활용가능, 매번 nil 확인을 하지 않고 최종적으로 원하는 값이 있는지 없는지 확인 할 수 있음

class Person{
    var name: String
    var job: String?
    var home: Apartment?
    init(name: String){
        self.name = name
    }
}
class Apartment{
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    init(dong: String, ho: String){
        buildingNumber = dong
        roomNumber = ho
    }
}

//MARK: - 옵셔널 체이닝 사용
let river: Person? = Person(name: "garam")
let apart: Apartment? = Apartment(dong: "101", ho: "202")
let superman: Person? = Person(name: "superman")

//옵셔널 체이닝 사용하지 않을 경우
func guardJob(owner: Person?){
    if let owner = owner {
        if let home = owner.home {
            if let `guard` = home.guard{
                if let guardJob = `guard`.job {
                    print("우리집 경비원의 직업은 \(guardJob)입니다.")
                } else{
                    print("우리집 경비원은 직업이 없어요..")
                }
            }
        }
    }
}
guardJob(owner: river)
//옵셔널 체이닝 사용할 경우
func guardJobWithOptionalChaning(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job {
        print("우리집 경비원의 직업은 \(guardJob)입니다.")
    } else {
        print("우리집 경비원은 직업이 없..")
    }
}
guardJobWithOptionalChaning(owner: river)

river?.home?.guard?.job
river?.home = apart
river?.home
river?.home?.guard
river?.home?.guard = superman
river?.home?.guard
river?.home?.guard?.name
river?.home?.guard?.job
river?.home?.guard?.job = "경비원"

//MARK: - nil 병합 연산자
// 중위 연산자 ??
//optional ?? value
//옵셔널 값이 nil일 경우, 우측의 값을 반환함

var guardJob: String
guardJob = river?.home?.guard?.job ?? "슈퍼맨"
print(guardJob)
river?.home?.guard?.job = nil
guardJob = river?.home?.guard?.job ?? "슈퍼맨"
print(guardJob)
