import Foundation


public protocol Maze {
    func addRoom(room: Room)
    func render()
}

public enum Side {
    case east
    case west
    case north
    case south
}

public protocol Room {
    func setSide(wall: Wall, on: Side)
}

public protocol Wall {
    
}


//public protocol MazeFactory {
//
//    // factory methods
//    func makeMaze() -> Maze
//    func makeRoom() -> Room
//    func makeWall() -> Wall
//}

public class MazeFactory {
    
    public init() {
        
    }
    
    // factory methods
    public func makeMaze() -> Maze {
        
        class DefaultMaze: Maze {
            func addRoom(room: Room) {
                
            }
            func render() {
                print("rendering emaze")
            }
        }
        
        return DefaultMaze()
    }
    
    public func makeRoom() -> Room {
        
        class DefaultRoom: Room {
            func setSide(wall: Wall, on: Side) {
                
            }
        }
        
        return DefaultRoom()
    }
    
    public func makeWall() -> Wall {
        
        class DefaultWall: Wall { }
        
        return DefaultWall()
    }
}




// Here's a version of CreateMaze that remedies that shortcoming by taking a MazeFactory as a parameter:

public class MazeGame {
    
    public init() { }
    
    public func createMaze(factory: MazeFactory) -> Maze {
        
        let maze = factory.makeMaze()
        
        let room1 = factory.makeRoom()
        let room2 = factory.makeRoom()
        
        room1.setSide(wall: factory.makeWall(), on: .east)
        room1.setSide(wall: factory.makeWall(), on: .west)
        
        room2.setSide(wall: factory.makeWall(), on: .north)
        room2.setSide(wall: factory.makeWall(), on: .east)
        
        maze.addRoom(room: room1)
        maze.addRoom(room: room2)
        
        return maze
    }
}



public class EnhancedMazeGame: MazeFactory {
    
    class EMaze: Maze {
        func addRoom(room: Room) {
            
        }
        func render() {
            print("rendering emaze")
        }
    }
    
    class ERoom: Room {
        func setSide(wall: Wall, on: Side) {
            
        }
    }
    
    class EWall: Wall { }
    
    public override init() { }
    
    public override func makeMaze() -> Maze {
        return EMaze()
    }
    
    public override func makeRoom() -> Room {
        let room = ERoom()
        return room
    }
    
//    public func makeWall() -> Wall {
//        let wall = EWall()
//        return wall
//    }
}


// BombedMazeFactory only needs to override two functions:

public class BombedMazeGame: MazeFactory {
    
    class BMaze: Maze {
        func addRoom(room: Room) {
            
        }
        func render() {
            print("rendering bmaze")
        }
    }
    
    class BRoom: Room {
        func setSide(wall: Wall, on: Side) {
            
        }
    }
    
    class BWall: Wall { }
    
    public override init() { }
    
//    public override func makeMaze() -> Maze {
//        return BMaze()
//    }
    
//    public override func makeRoom() -> Room {
//        let bRoom = BRoom()
//        return bRoom
//    }
    
    public override func makeWall() -> Wall {
        let bWall = BWall()
        return bWall
    }
}
 
