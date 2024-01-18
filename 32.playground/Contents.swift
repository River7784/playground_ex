import UIKit

protocol Readable {
    func read()
}
protocol Writeable {
    func write()
}
protocol ReadSpeakable: Readable {
    func speak()
}
protocol ReadWriteSpeakable: Readable, Writeable {
    func speak()
}
struct SomeType: ReadWriteSpeakable {
    func read() {
        print("Read")
    }
    func write() {
        print("Write")
    }
    func speak() {
        print("Speak")
    }
}

//MARK: - 클래스 상속과 프로토콜
class SuperClass: Readable {
    func read() {

    }
}
class SubClass: SuperClass, Writeable, ReadSpeakable {
    func write() {
    }
    func speak() {
    }
}

//MARK: - 프로토콜 준수 확인

let sup: SuperClass = SuperClass()
let sub: SubClass = SubClass()
var someAny: Any = sup
someAny is Readable
someAny is ReadSpeakable
someAny = sub
someAny is Readable
someAny is ReadSpeakable
if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
} // read
if let someReadSpeakable: ReadSpeakable = someAny as? ReadSpeakable {
    someReadSpeakable.speak()
} // 동작하지 않음
someAny = sub
if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
} // read
