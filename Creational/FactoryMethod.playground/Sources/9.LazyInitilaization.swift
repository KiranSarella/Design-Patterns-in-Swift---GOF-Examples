import Foundation

/// 3. Language-specificvariantsandissues.
/// Just be careful not to call factory methods in the Creator's constructor—the factory method in the ConcreteCreator won't be available yet.
/// You can avoid this by being careful to access products solely through accessor operations that create the product on demand.
/// called **lazy initialization**


public protocol Product9 {
    
}

public class ConcreteProduct9: Product9 {
    public init() {  }
}

public protocol Creator9 {
    
    // factory method
    func createProduct() -> Product9
    
    // ** unable to set this as private in swift
    var product: Product9? { get set }
}

extension Creator9 {
    
    public mutating func getProduct() -> Product9 {
        print(#function)
        if product == nil {
            product = createProduct()
        }
        
        return product!
    }
}

public class ConcreteCreator9: Creator9 {
    
    public var product: Product9?
    
    public init() { }
    
    public func createProduct() -> Product9 {
        print(#function)
        return ConcreteProduct9()
    }
}
