import Foundation

public class DocumentEditor {
    
    public init() { }
    
    let imageProxy = ImageProxy(imageName: "diagram 1")
    
    public func loadDocument() {
        
        print(String(describing: self), #function)
        
        print("loading .. text ")
        let size = imageProxy.getExtent()
        print("proxy image size: \(size.width), \(size.height)")
        print("loading .. text ")
    }
    
    public func viewPage() {
        print(String(describing: self), #function)
        
        imageProxy.draw()
    }
}
