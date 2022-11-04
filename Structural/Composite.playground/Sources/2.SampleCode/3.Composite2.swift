import Foundation


public class CompositeEquipment: Equipment {

    public var id: UUID = UUID()

    public var name: String = "Grouped Equipments"

    private var equipments = [Equipment]()
    
    // shared-operations
    public func power() -> Float {
        return equipments.reduce(0) { $0 + $1.power() }
    }

    public func netPrice() -> Float {
        return equipments.reduce(0) { $0 + $1.netPrice() }
    }
    
    
    public func netPriceCalc() -> Float {
        return equipments.reduce(0) { $0 + $1.netPrice() } + netPrice()
    }

    public func discountPrice() -> Float {
        return equipments.reduce(0) { $0 + $1.discountPrice() }
    }

    
    // child-operations
    public func add(equipment: Equipment) {
        equipments.append(equipment)
    }

    public func remove(equipment: Equipment) {
        equipments.removeAll { equp in
            equp.id == equipment.id
        }
    }
}



public class Chassis: CompositeEquipment {
    
    // other chassis properties and functions
    
    public init(name: String) {
        super.init()
        super.name = name
    }
    
    public override func netPrice() -> Float {
        return 100
    }
}


public class Cabinet: CompositeEquipment {
    
    // other Cabinet properties and functions
    
    public init(name: String) {
        super.init()
        super.name = name
    }
    
    public override func netPrice() -> Float {
        return 100
    }
}


public class Bus: CompositeEquipment {
    
    // other Bus properties and functions
    
    public init(name: String) {
        super.init()
        super.name = name
    }
    
    public override func netPrice() -> Float {
        return 100
    }
}


public class Card: CompositeEquipment {
    
    // other Card properties and functions
    
    public init(name: String) {
        super.init()
        super.name = name
    }
    
    public override func netPrice() -> Float {
        return 100
    }
}

