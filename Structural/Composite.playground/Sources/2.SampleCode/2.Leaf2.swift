import Foundation

public class FloppyDisk: Equipment {
    
    public var id: UUID = UUID()
    
    public var name: String
    
    public init(name: String) {
        self.name = name
    }
    
    public func power() -> Float {
        return 120
    }
    
    public func netPrice() -> Float {
        return 100
    }
    
    public func discountPrice() -> Float {
        return 20
    }
    
}


