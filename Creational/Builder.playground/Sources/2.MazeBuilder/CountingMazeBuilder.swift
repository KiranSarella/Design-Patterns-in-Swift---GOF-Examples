import Foundation

// product
public class CountingMazeBuilder: MazeBuilder {
    
    let name = "counting maze"
    
    private var rooms = 0
    private var doors = 0
    
    public init() { }
    
    public func buildRoom(roomID: Int) {
        print(name, #function)
        rooms += 1
    }
    
    public func buildDoors(roomFrom: Int, roomTo: Int) {
        print(name, #function)
        
        doors += 1
    }
    
    public func getCounts() -> (Int, Int) {
        return (rooms, doors)
    }
}
