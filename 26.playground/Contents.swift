import UIKit

//MARK: - 초기값 지정
class PersonC {
    var name: String
    var age: Int
    var nickName: String?
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
let jenny: PersonC = PersonC(name: "jenny", age: 10)
let mike: PersonC = PersonC(name: "mike", age: 15, nickName: "m")

class Puppy {
    var name: String
    var owner: PersonC!
    init(name: String) {
        self.name = name
    }
    func goOut() {
        print("\(name)가 주인 \(owner.name)와 산책을 합니다")
    }
}
let happy: Puppy = Puppy(name: "happy")

//happy.goOut() // 주인이 없는 상태라 오류 발생
happy.owner = jenny
happy.goOut()

//MARK: - 실패가능한 이니셜라이저
class PersonD {
    var name: String
    var age: Int
    var nickName: String?
    init?(name: String, age: Int){
        if(0...120).contains(age) == false{
            return nil
        }
        if name.characters.count == 0 {
                    return nil
        }   //해당 오류는 스위프트 버전 변경으로 인한 오류
        self.name = name
        self.age = age
    }
}
let john: PersonD? = PersonD(name: "john", age: 23)
let joker: PersonD? = PersonD(name: "joker", age: 123)
let batman: PersonD? = PersonD(name: "", age: 10)
print(joker) // nil
print(batman) // nil

//MARK: - 디이니셜라이저
class PersonE {
    var name: String
    var pet: Puppy?
    var child: PersonC
    init(name: String, child: PersonC) {
        self.name = name
        self.child = child
    }
    // 인스턴스가 메모리에서 해제되는 시점에 자동 호출
    deinit {
        if let petName = pet?.name {
            print("\(name)가 \(child.name)에게 \(petName)를 인도합니다")
            self.pet?.owner = child
        }
    }
}
var donald: PersonE? = PersonE(name: "donald", child: jenny)
donald?.pet = happy
donald = nil // donald 인스턴스가 더이상 필요없으므로 메모리에서 해제됩니다
