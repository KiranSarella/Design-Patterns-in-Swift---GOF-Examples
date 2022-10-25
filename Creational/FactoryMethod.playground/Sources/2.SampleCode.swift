import Foundation

/*
 
 class MazeGame {
    public:
        Maze* CreateMaze();
    // factory methods:
        virtual Maze* MakeMaze() const
           { return new Maze; }
        virtual Room* MakeRoom(int n) const
           { return new Room(n); }
        virtual Wall* MakeWall() const
           { return new Wall; }
        virtual Door* MakeDoor(Room* r1, Room* r2) const
           { return new Door(r1, r2); }
 };
 */


public protocol MazeGame {
    
    // factory methods
    func makeMaze() -> Maze
    func makeRoom() -> Room
    func makeWall() -> Wall
}

extension MazeGame {
    
    // operations
    public func createMaze() -> Maze {
        
        let maze = makeMaze()
        
        let room1 = makeRoom()
        let room2 = makeRoom()
        
        room1.setSide(wall: makeWall(), on: .east)
        room1.setSide(wall: makeWall(), on: .west)
        
        room2.setSide(wall: makeWall(), on: .north)
        room2.setSide(wall: makeWall(), on: .east)
        
        maze.addRoom(room: room1)
        maze.addRoom(room: room2)
        
        return maze
    }
    
}

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


public class BombedMazeGame: MazeGame {
    
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
    
    public init() { }
    
    public func makeMaze() -> Maze {
        return BMaze()
    }
    
    public func makeRoom() -> Room {
        let bRoom = BRoom()
        return bRoom
    }
    
    public func makeWall() -> Wall {
        let bWall = BWall()
        return bWall
    }
}

public class EnhancedMazeGame: MazeGame {
    
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
    
    public init() { }
    
    public func makeMaze() -> Maze {
        return EMaze()
    }
    
    public func makeRoom() -> Room {
        let room = ERoom()
        return room
    }
    
    public func makeWall() -> Wall {
        let wall = EWall()
        return wall
    }
}



