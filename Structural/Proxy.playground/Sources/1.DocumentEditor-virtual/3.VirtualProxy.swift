import Foundation


// virtual proxy example

public class ImageProxy: Graphic {
    
    var fileName: String
    
    var extent = Extent(width: 100, height: 100) // default image widht, height
    
    var image: Image?
    
    public init(imageName: String) {
        fileName = imageName
    }
    
    func loadImage(fileName: String) -> Image {
        print(#function)
        return Image()
    }
}

extension ImageProxy {
    
    public func draw() {
        
        print(String(describing: self), #function)
        
        if image == nil {
            image = loadImage(fileName: fileName)
        }
        image?.draw()
    }
    
    public func getExtent() -> Extent {
        
        print(String(describing: self), #function)
        
        if image == nil {
            return extent
        } else {
            return image!.getExtent()
        }
    }
}
