import UIKit

/*
 컬렉션 타입
 Array, Dictionary, Set
 */

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고 멤버가 유일한 컬렉션
 */

//MARK: - Array

//빈 Int Array 생성
var intS: Array<Int> = Array<Int>()

//값 넣기
intS.append(1)
intS.append(100)

//값이 들어있는지 반환
intS.contains(100) //true
intS.contains(99) //false

intS.remove(at: 0) //0번 index 값 제거
intS.removeLast() //마지막 값 제거
intS.removeAll() //모든 값 제거

intS.count //해당 배열에 값이 몇개 들어있는지 확인

//다양한 Array 선언
//Array<타입명>과 [타입명]은 동일한 표현

//Double Array
var dbS: Array<Double> = [Double]()

//String Array
var stS: [String] = [String]()

//Character Array
var chS: [Character] = []

//let을 사용하여 Array를 선언하면 값 변경이 불가능한 Array
let immutableArray = [1, 2, 3]

//MARK: - Dictionary

//Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var dicA: Dictionary<String, Any> = [String:Any]()
dicA["firstKey"] = "value"
dicA["secondKey"] = 100

dicA

//값 변경
dicA["firstKey"] = "dictionary"

//값 제거
dicA.removeValue(forKey: "secondKey")
dicA["firstKey"] = nil

//let사용
let emptydicB:[String: String] = [:]
let dicC:[String: String] = ["name": "river", "gender": "male"]


//MARK: - Set

//빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)   //중복된 값이 없는것을 보장함

integerSet  //3개의 값만 출력

//값 확인
integerSet.contains(1)
integerSet.contains(00)

//값 제거
integerSet.remove(100)
integerSet.removeFirst()

//값이 몇개 들어있는지 확인
integerSet.count

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

//합집합
let union: Set<Int> = setA.union(setB)
//정렬합집합
let sortUnion: [Int] = union.sorted()
//교집합
let intersection: Set<Int> = setA.intersection(setB)
//차집합
let subtracting: Set<Int> = setA.subtracting(setB)
