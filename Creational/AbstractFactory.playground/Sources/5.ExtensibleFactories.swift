import Foundation

/// 3. Defining extensible factories.
///
/// Issue:
/// Abstract Factory usually defines a different operation for each kind of product it can produce.
/// Adding a new kind of product requires changing the AbstractFactory interface and all the classes that depend on it.
///
/// Solution:
/// A more flexible but less safe design is to add a parameter to operations (** means individual product methods inside a factory, not factories) that create objects.
/// this approach, AbstractFactory *only needs a single "Make" operation with a parameter indicating the kind of object to create.*
/// return type - only when all objects have the same abstract base class - *client could perform a downcast*
///


// product common interface
public protocol Gesture {
    var gestureType: String { get set }
}

// product interface
public protocol TapGesture: Gesture {
    func onTap()
}

// product interface
public protocol DragGesture: Gesture {
    func onDrag()
}

// abstract factory interface
public protocol GestureLibrary {
    
    func makeGesture(type: String) -> Gesture?
}

// factory
class PuppyOSLib: GestureLibrary {
    
    class PuppyTapGesture: TapGesture {
        
        var gestureType: String = "tap gesture"
        
        func onTap() {
            print(#function)
        }
    }
    
    class PuppyDragGesture: DragGesture {
        
        var gestureType: String = "drag gesture"
        
        func onDrag() {
            print(#function)
        }
    }
    
    public init() { }
    
    public func makeGesture(type: String) -> Gesture? {
        if type == "tap" {
            return PuppyTapGesture()
        } else if type == "drag" {
            return PuppyDragGesture()
        }
        
        return nil
    }
}


// factory
public class ElementaryOSLib: GestureLibrary {
    
    class ElementaryTapGesture: TapGesture {
        
        var gestureType: String = "tap gesture"
        
        func onTap() {
            print(#function)
        }
    }
    
    class ElementaryDragGesture: DragGesture {
        
        var gestureType: String = "drag gesture"
        
        func onDrag() {
            print(#function)
        }
    }
    
    public init() { }
    
    public func makeGesture(type: String) -> Gesture? {
        if type == "tap" {
            return ElementaryTapGesture()
        } else if type == "drag" {
            return ElementaryDragGesture()
        }
        
        return nil
    }
}


// Gesture Factory Creator
public class GestureFactoryCreator {
    
    public init() { }
    
    // create factories
    public func createGestureFactory(os: String) -> GestureLibrary {
        if os == "puppy" {
            return PuppyOSLib()
        } else {
            return ElementaryOSLib()
        }
    }
}
