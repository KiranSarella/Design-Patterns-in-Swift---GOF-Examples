import Foundation

public class WindowSystemFactory {
    
    func makeWindowImp(client: String) -> WindowImp2 {
        
        if client == "ibm" {
            return PMWindowImp2()
        } else {
            return XWindowImp2()
        }
    }
    
    public init() { }
}
