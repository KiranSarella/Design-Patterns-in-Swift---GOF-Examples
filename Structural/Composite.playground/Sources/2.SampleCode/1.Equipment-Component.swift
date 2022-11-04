import Foundation

public protocol Equipment {
    
    // shared operations
    var id: UUID { get }
    var name: String { get set }
    
    func power() -> Float
    func netPrice() -> Float
    func discountPrice() -> Float
    
    // child-operations
    func add(equipment: Equipment)
    func remove(equipment: Equipment)
}

extension Equipment {
    
    // shared operations
    public func power() -> Float {
        return 0
    }
    
    public func netPrice() -> Float {
        return 0
    }
    
    public func discountPrice() -> Float {
        return 0
    }
    
    // child-operations
    public func add(equipment: Equipment) {
        
    }
    
    public func remove(equipment: Equipment) {
        
        
    }
}

