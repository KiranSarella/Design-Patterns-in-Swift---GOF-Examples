import Foundation

public class MazeFactory1 {
    
    private static var _instance: MazeFactory1!
    
    fileprivate init() { }
    
    public static func instance() -> MazeFactory1 {
        
        if _instance == nil {
            
            _instance = MazeFactory1()
        }
        
        return _instance
    }
    
}
