import Foundation

public class ClientS {
 
    public init() { }

    public func buildCabinet() {
        
        /*
         cabinet
            chassis
                bus
                  card
                floppy
         
         
         */
        
        let cabinet = Cabinet(name: "PC Cabinet")
        
        let chassis = Chassis(name: "PC Chassis")
        cabinet.add(equipment: chassis)
        
        let bus = Bus(name: "MCA Bus")
        bus.add(equipment: Card(name: "6Mbs Token Ring"))
        chassis.add(equipment: bus)
        
        chassis.add(equipment: FloppyDisk(name: "3.5in Floppy"))
        
        print(chassis.netPrice())

        print(chassis.netPriceCalc())
        print(cabinet.netPriceCalc())
        
    }
    
}
