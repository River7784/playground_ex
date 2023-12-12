import UIKit

//다크모드 여부
var isDarkMode : Bool = true

//isDarkMode == true
//if isDarkMode {
//    print("다크모드 입니다.")
//}else {
//    print("다크모드가 아닙니다.")
//}

//삼항연산자
var title : String = isDarkMode ? "다크모드입니다." : "다크모드가 아닙니다."

print(title)
