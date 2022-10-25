import Foundation



// Director
public class MazeGame {
    
    public init() { }
    
    public func createMaze(builder: MazeBuilder) -> Maze {
        builder.buildMaze()
        builder.buildRoom(roomID: 1)
        builder.buildRoom(roomID: 2)
        builder.buildDoors(roomFrom: 1, roomTo: 2)
        
        return builder.getMaze()
    }
 
    
    public func createComplexMaze(builder: MazeBuilder) -> Maze {
        builder.buildMaze()
        builder.buildRoom(roomID: 1001)
        builder.buildRoom(roomID: 2001)
        builder.buildDoors(roomFrom: 1001, roomTo: 2001)
        
        return builder.getMaze()
    }
}


public class Maze {
    
    func addRoom(room: Room) {
        
    }
}

public class Room {
    
    let id: Int
    
    public init(id: Int) {
        self.id = id
    }
    
    func addSize(direction: String) {

    }
}

public class Door {
    
}
