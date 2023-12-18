import UIKit

//MARK: - for-in
//기존언어의 for-each와 유사
//Dictionary의 경우 이터레이션 아이템으로 튜플이 들어온다.

/*
for item in items{
    //실행구문
}
*/

var integers = [1, 2, 3]
let people = [
    "garam": 10,
    "river": 15,
    "mac": 12
]

for integer in integers{
    print(integer)
}

//Dictionary의 item은 key와 value로 구성된 튜플
for(name, age) in people {
    print("\(name): \(age)")
}


//MARK: - while

/*
 while 조건 {
    //실행구문
 }
 */

while integers.count > 1{
    integers.removeLast()
}

//MARK: - repeat-while 구문

/*
repeat{
    //실행구문
}
*/

repeat {
    integers.removeLast()
} while integers.count > 0

