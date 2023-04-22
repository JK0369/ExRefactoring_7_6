import UIKit

struct Plan {
    var base = 0
    var unit = 1
    var discountThreshold = 2
    var discountFactor = 3
}

struct Order {
    var units = 0
    var isRepeat = false
}

let pricingPlan = retrievePricingPlan()
let order = retrieveOrder()
let baseCharge = pricingPlan.base

var charge: Int
let chargePerUnit = pricingPlan.unit
let units = order.units

var discount: Int
charge = baseCharge + units * chargePerUnit
let discountableUnits = max(units - pricingPlan.discountThreshold, 0)
discount = discountableUnits * pricingPlan.discountFactor

if order.isRepeat {
    discount += 20
}

charge -= discount
chargeOrder(charge: charge)

private func retrievePricingPlan() -> Plan {
    Plan()
}
private func retrieveOrder() -> Order {
    Order()
}
private func chargeOrder(charge: Int) {
    print("charge:", charge)
}

// ex2)
func calculate() {
    var base = 1
    let a: Int
    
    if base % 2 == 0 {
        a = 1
    } else {
        a = 2
    }
    base += a
    
    let b: Int
    if base < 6 {
        b = 3
    } else {
        b = 1
    }
}
