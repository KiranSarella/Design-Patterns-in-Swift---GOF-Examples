import Foundation

// env variable
public var mazeType: String = "default"

public class MazeFactory {
    
    private static var _instance: MazeFactory!
    
    fileprivate init() { }
    
    public static func instance() -> MazeFactory {
        
        if _instance == nil {
            
            let mazeStyle = getEnv("MAZESTYLE")
            
            if mazeStyle == "bombed" {
                _instance = BombedMazeFactory()
            } else if mazeStyle == "enchanted" {
                _instance = EnchantedMazeFactory()
            } else {
                _instance = MazeFactory()
            }
        }
        
        return _instance
    }
    
    static func getEnv(_ key: String) -> String {
        
        return mazeType
    }
    
    public func createGame() {
        print("starting.. MazeFactory")
    }
    
}


public class BombedMazeFactory: MazeFactory {
    
    override init() {
        super.init()
    }
    
    override public func createGame() {
        print("starting.. BombedMazeFactory")
    }
}


public class EnchantedMazeFactory: MazeFactory {
    
    override init() {
        super.init()
    }
    
    override public func createGame() {
        print("starting.. EnchantedMazeFactory")
    }
}
