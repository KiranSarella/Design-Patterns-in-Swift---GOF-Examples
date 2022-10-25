import Foundation

/// 2. Parameterized factory methods.
///


public protocol Product {
    
}

public class MyProduct: Product {
    public init() {
        print("Creating MyProduct")
    }
}

public class YourProduct: Product {
    public init() {
        print("Creating YourProduct")
    }
}


public protocol Creator {
    // parameterized factory method
    func createProduct(productID: String) -> Product?
}

extension Creator {
    // default implentation of a factory method
    public func createProduct(productID: String) -> Product? {
        
        if productID == "MY" {
            return MyProduct()
        } else if productID == "YOUR" {
            return YourProduct()
        }
        
        return nil
    }
}

public class DefaultCreator: Creator {
    public init() { }
}


public class MyCreator: Creator {
    
    public class MineProduct: Product {
        public init() {
            print("Creating MineProduct")
        }
    }

    public class YoursProduct: Product {
        public init() {
            print("Creating YoursProduct")
        }
    }
    
    
    public class TheirsProduct: Product {
        public init() {
            print("Creating TheirsProduct")
        }
    }
    
    
    public init() { }
    
    public func createProduct(productID: String) -> Product? {
        
        if productID == "MINE" {
            return MineProduct()
        } else if productID == "YOUR" {
            return YoursProduct()
        } else if productID == "THEIRS" {
            return TheirsProduct()
        }
        
        // super/default implementation
        return (self as Creator).createProduct(productID: productID)
    }
}


