import UIKit

// MARK: Decorator

protocol Coffee {
    var cost: Int { get }
}

class SimpleCoffee: Coffee {
    var cost: Int {
        return 2
    }
}



protocol CoffeeDecorator: Coffee {
    var baseCoffee: Coffee { get }
    init(base: Coffee)
}

class MilkCoffe: CoffeeDecorator {
    var baseCoffee: Coffee

    required init(base: Coffee) {
        self.baseCoffee = base
    }

    var cost: Int {
        return baseCoffee.cost + 3
    }
}

class WhipCoffe: CoffeeDecorator {
    var baseCoffee: Coffee

    required init(base: Coffee) {
        self.baseCoffee = base
    }

    var cost: Int {
        return baseCoffee.cost * 2
    }
}

class SugarCoffe: CoffeeDecorator {
    var baseCoffee: Coffee

    required init(base: Coffee) {
        self.baseCoffee = base
    }

    var cost: Int {
        return baseCoffee.cost + 1
    }
}



let coffe = SimpleCoffee()
let milkCoffe = MilkCoffe(base: coffe)
let whipCoffe = WhipCoffe(base: milkCoffe)
let sugarCoffe = SugarCoffe(base: whipCoffe)

let sugarOnlyCoffe = SugarCoffe(base: coffe)


print(sugarCoffe.cost)
print(sugarOnlyCoffe.cost)
