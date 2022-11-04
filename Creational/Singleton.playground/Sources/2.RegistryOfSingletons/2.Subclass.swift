import Foundation

// Where do Singleton classes register themselves? One possibility is in their constructor.

public class MySingleton: Singleton {
    
    override init() {
        super.init()
        
        print("self registering subclass")
        
        Singleton.register(name: "MySingleton", singleton: self)
    }
    
    override public func runProgram() {
        print("MySingleton" ,#function)
    }
}



// Of course, the constructor won't get called unless someone instantiates the class, which echoes the problem the Singleton pattern is trying to solve!
// We can get around this problem in C++ by defining a static instance of MySingleton.


public func triggerRegistration() {
    let _ = MySingleton()
}



// in the file that contains MySingleton's implementation.

/*
 No longer is the Singleton class responsible for creating the singleton. Instead, its primary responsibility is to make the singleton object of choice accessible in the system.
 
 The static object approach still has a potential drawback—namely that instances of all possible Singleton subclasses must be created, or else they won't get registered.

 */
