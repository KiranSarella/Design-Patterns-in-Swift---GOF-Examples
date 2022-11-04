import Foundation

public class Singleton {
    
    static var _registry = [String: Singleton]()
    static var _instance: Singleton!
    
    
    
    public static func instance() -> Singleton {
        
        if _instance == nil {
            
            let singletonName = getEnvVariable("SINGLETON")
            
            _instance = lookup(singletonName)
            
            // lookup is optional, so default singleton or fatalerror
            if _instance == nil {
                print("default singleton")
                _instance = Singleton()
            }
        }
        
        return _instance
    }
    
    static func register(name: String, singleton: Singleton) {
        
        _registry[name] = singleton
    }
    
    static func lookup(_ name: String) -> Singleton? {
        return _registry[name]
    }
    
    
    public func runProgram() {
        print("Singleton" ,#function)
    }
}

func getEnvVariable(_ key: String) -> String {
    
    return "MySingleton"
}
