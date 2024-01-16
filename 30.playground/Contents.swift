import UIKit

//MARK: - 빠른종료 , guard를 사용하여 잘못된 값의 전달 시 특정 실행구문을 빠르게 종료함
func functionwithGuard(age: Int?) {
    guard let unwrappedAge = age,
        unwrappedAge < 130,
        unwrappedAge >= 0 else{
        print("나이값 입력이 잘못됐습니다.")
        return
    }
    print("당신의 나이는 \(unwrappedAge)세 입니다.")
}
var count = 1
while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}
//1
//2
func someFunction(info: [String: Any]) {
    guard let name = info["name"] as? String else {
        return
    }
    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }
    print("\(name): \(age)")
}
someFunction(info: ["name": "jenny", "age": 10])
someFunction(info: ["name": "mike"])
someFunction(info: ["name": "river", "age": 10])
