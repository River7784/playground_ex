import UIKit

//MARK: - 프로퍼티의 초기값이 필요없을떄

//옵셔널을 사용
class PersonC {
    var name: String
    var age: Int
    var nickName: String?
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
}

let c: PersonC = PersonC(name: "C", age: 10)
let d: PersonC = PersonC(name: "D", age: 15, nickName: "DD")

//암시적 추출 옵셔널은 인스턴스 사용에 꼭 필요하지만 초기값을 할당하지 않고자 할 때 사용함
class Puppy {
    var name: String
    var owner: PersonC!
    init(name: String) {
        self.name = name
    }
    func goOut() {
        print("\(name)가 주인 \(owner.name)와 산책합니다.")
    }
}
let happy: Puppy = Puppy(name: "happy")

happy.owner = c
happy.goOut()
