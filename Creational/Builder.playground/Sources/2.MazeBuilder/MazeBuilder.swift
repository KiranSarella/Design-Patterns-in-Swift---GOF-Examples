import Foundation

// Builder
public protocol MazeBuilder {
    
    func buildMaze()
    func buildRoom(roomID: Int)
    func buildDoors(roomFrom: Int, roomTo: Int)
    
    func getMaze() -> Maze
}

extension MazeBuilder {
    
    // It defines empty implementations primarily for convenience. Subclasses of MazeBuilder do the actual work.

    public func buildMaze() {
        
    }
    
    public func buildRoom(roomID: Int) {
        
    }
    
    public func buildDoors(roomFrom: Int, roomTo: Int) {
        
    }
    
    public func getMaze() -> Maze {
//        fatalError("must be implemted by subclasses")
        return Maze()
    }
    
    func mazeBuilder() {
        
    }
}


