import Foundation


// product interface
public protocol ProductA {
    var productName: String { get set }
    func printInfo()
}

// product interface
public protocol ProductB {
    var name: String { get set }
    func display()
}

// abstract factory interface
public protocol Factory {
    
    func createProductA() -> ProductA
    func createProductB() -> ProductB
}

// Factory Creator
public class Lib {
    
    public init() { }
    // create factories
    public func createFactory(primary: Bool) -> Factory {
        if primary {
            return FactoryX()
        } else {
            return FactoryY()
        }
    }
}

// factory
public class FactoryX: Factory {
    
    class ProductAX: ProductA {
        var productName: String = "Product A X"
        func printInfo() {
            print(productName)
        }
    }
    
    class ProductBX: ProductB {
        var name: String = "Product B X"
        func display() {
            print(name)
        }
    }
    
    public init() { }
    
    // product operation
    public func createProductA() -> ProductA {
        return ProductAX()
    }
    
    // product operation
    public func createProductB() -> ProductB {
        return ProductBX()
    }
}

// factory
public class FactoryY: Factory {
    
    class ProductAY: ProductA {
        var productName: String = "Product A Y"
        func printInfo() {
            print(productName)
        }
    }
    
    class ProductBY: ProductB {
        var name: String = "Product B Y"
        func display() {
            print(name)
        }
    }
    
    public init() { }
    
    // product operation
    public func createProductA() -> ProductA {
        return ProductAY()
    }
    
    // product operation
    public func createProductB() -> ProductB {
        return ProductBY()
    }
}



