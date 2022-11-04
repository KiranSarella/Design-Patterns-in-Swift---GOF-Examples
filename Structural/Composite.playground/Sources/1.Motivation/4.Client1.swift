import Foundation

public class ClientM {
    
    public init() {
        
        
    }
    
    public func preview() {
        
        var mainPic = Picture()
        
        var lineRectPic = Picture()
        lineRectPic.add(graphic: Line())
        lineRectPic.add(graphic: Rectangle())
        
        // leafs
        mainPic.add(graphic: Line())
        mainPic.add(graphic: Rectangle())
        // composites
        mainPic.add(graphic: lineRectPic)
        // leafs
        mainPic.add(graphic: Text())
        
        mainPic.draw()
    }
}

