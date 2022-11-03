import Foundation

public protocol Tool {
    
    func handleMousePress()
    func handleMouseRelease()
    func handleCharacter()
    func getCursor()
    func activate()
}

// default behaviour
extension Tool {
    
    func handleMousePress() {
         
    }
    
    func handleMouseRelease() {
        
    }
    
    func handleCharacter() {
        
    }
    
    func getCursor() {
        
    }
    
    func activate() {
        
    }
}
