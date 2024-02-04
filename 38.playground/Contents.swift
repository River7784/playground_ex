import UIKit

//프로토콜 초기 구현

// 무언가를 수신할 수 있는 기능
protocol Receiveable {
    func received(data: Any, from: Sendable)
}

extension Receiveable {
    // 메시지를 수신합니다.
    func received(data: Any, from: Sendable) {
        print("\(self) received \(data) from \(from)")
    }
}

// 무언가를 발신할 수 있는 기능
protocol Sendable {
    var from: Sendable { get }
    var to: Receiveable? { get }
    func send(data: Any)
    static func isSendableInstance(_ instance: Any) -> Bool
}

extension Sendable {
    var from: Sendable {
        return self
    }

    // 메시지를 발신합니다.
    func send(data: Any) {
        guard let receiver: Receiveable = self.to else {
            print("Message has no receiver")
            return
        }

        // 수신 가능한 인스턴스의 received 메서드를 호출합니다.
        receiver.received(data: data, from: self.from)
    }

    static func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableInstance: Sendable = instance as? Sendable {
            return sendableInstance.to != nil
        }
        return false
    }
}
