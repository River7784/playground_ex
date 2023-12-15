import UIKit

let someInteger = 100

if someInteger < 100{
    print("100미만")
}else if someInteger > 100 {
    print("100초과")
}else{
    print("100")
}

switch someInteger{
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

switch "a"{
case "a":
    print("A")
case "b":
    print("B")
case "c":
    print("C")
case "d":
    print("D")
default:
    print("unknown") 
}
