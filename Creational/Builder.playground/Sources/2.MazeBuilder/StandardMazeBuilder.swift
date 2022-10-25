import Foundation

// product
public class StandardMazeBuilder: MazeBuilder {
    
    let name = "standard"
    
    private var currentMaze: Maze!
    
    public init() { }
    
    public func buildMaze() {
        print(name, #function)
        currentMaze = Maze()
    }
    
    public func buildRoom(roomID: Int) {
        print(name, #function)
        let room = Room(id: roomID)
        currentMaze.addRoom(room: room)
        
        room.addSize(direction: "north")
        room.addSize(direction: "east")
        
    }
    
    public func buildDoors(roomFrom: Int, roomTo: Int) {
        print(name, #function)
        
    }
    
    public func getMaze() -> Maze {
        return currentMaze
    }
}
