import UIKit


enum VendingMachineError: Error {
    case invalidInput
    case insufficientFunds(moneyNeeded: Int)
    case outOfStock
}

class VendingMachine {
    let itemPrice: Int = 100
    var itemCount: Int = 5
    var deposited: Int = 0
    // 돈 받기 메서드
    func receiveMoney(_ money: Int) throws {
        // 입력한 돈이 0이하면 오류를 던집니다
        guard money > 0 else {
            throw VendingMachineError.invalidInput
        }
        // 오류가 없으면 정상처리를 합니다
        self.deposited += money
        print("\(money)원 받음")
    }
    // 물건 팔기 메서드
    func vend(numberOfItems numberOfItemsToVend: Int) throws -> String {
        // 원하는 아이템의 수량이 잘못 입력되었으면 오류를 던집니다
        guard numberOfItemsToVend > 0 else {
            throw VendingMachineError.invalidInput
        }
        // 구매하려는 수량보다 미리 넣어둔 돈이 적으면 오류를 던집니다
        guard numberOfItemsToVend * itemPrice <= deposited else {
            let moneyNeeded: Int
            moneyNeeded = numberOfItemsToVend * itemPrice - deposited
            throw VendingMachineError.insufficientFunds(moneyNeeded: moneyNeeded)
        }
        // 구매하려는 수량보다 요구하는 수량이 많으면 오류를 던집니다
        guard itemCount >= numberOfItemsToVend else {
            throw VendingMachineError.outOfStock
        }
        // 오류가 없으면 정상처리를 합니다
        let totalPrice = numberOfItemsToVend * itemPrice
        self.deposited -= totalPrice
        self.itemCount -= numberOfItemsToVend
        return "\(numberOfItemsToVend)개 제공함"
    }
}
// 자판기 인스턴스
let machine: VendingMachine = VendingMachine()
// 판매 결과를 전달받을 변수
var result: String?

//MARK: - do-catch
//오류처리

do {
    try machine.receiveMoney(0)
} catch VendingMachineError.invalidInput {
    print("입력이 잘못되었습니다")
} catch VendingMachineError.insufficientFunds(let moneyNeeded) {
    print("\(moneyNeeded)원이 부족합니다")
} catch VendingMachineError.outOfStock {
    print("수량이 부족합니다")
} // 입력이 잘못되었습니다

do {
    try machine.receiveMoney(300)
} catch /*(let error)*/ {
    switch error {
    case VendingMachineError.invalidInput:
        print("입력이 잘못되었습니다")
    case VendingMachineError.insufficientFunds(let moneyNeeded):
        print("\(moneyNeeded)원이 부족합니다")
    case VendingMachineError.outOfStock:
        print("수량이 부족합니다")
    default:
        print("알수없는 오류 \(error)")
    }
} // 300원 받음

do {
    result = try machine.vend(numberOfItems: 4)
} catch {
    print(error)
} // insufficientFunds(100)

do {
    result = try machine.vend(numberOfItems: 4)
}
