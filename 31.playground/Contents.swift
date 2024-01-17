import UIKit

//MARK: - 프로토콜은 특정 역할을 수행하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진을 정의함

//MARK: - 프로토콜 구현
protocol Talkable {
    //프로퍼티 요구
    //프로퍼티 요구는 항상 var 키워드를 사용함
    //get은 읽기만 가능해도 상관 없다는 뜻이며 get과 set을 모두 명시하면 읽기쓰기 모두 가능한 프로퍼티
    var topic: String { get set }
    var language: String { get }
    //메서드 요구
    func talk()
    //이니셜라이저 요구
    init(topic: String, language: String)
}

//MARK: - 프로토콜 채택 및 준수
//Person 구조체는 Talkabe 프로토콜을 채택
struct Person: Talkable {
    // 프로퍼티 요구 준수
    var topic: String
    let language: String
    // 읽기전용 프로퍼티 요구는 영ㄴ산 프로퍼티로 대체가 가능
    
    //메서드 요구 준수
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다.")
    }
    //이니셜라이저 요구 준수
    init(topic: String, language: String) {
        self.topic = topic
        self.language = language
    }
}

/*
struct Person: Talkable {
    var subject: String = ""
    //프로퍼티 요구는 연산 프로퍼티로 대체 가능
    var topic: String {
        set {
            self.subject = newValue
        }
        get {
            return self.subject
        }
    }
    var language: String { return "한국어" }
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다.")
    }
    init(subject: String) {
        self.topic = topic
    }
}
*/


