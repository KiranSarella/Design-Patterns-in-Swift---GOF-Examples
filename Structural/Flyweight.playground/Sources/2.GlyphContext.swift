import Foundation

// GlyphContext acts as a repository of extrinsic state.

//public protocol GlyphContext {
//
//    func next(step: Int)
//    func insert(quantity: Int)
//
//    func getFont() -> String
//    func setFont(font: String, span: Int)
//}


public class GlyphContext {
    
    public var position: Int = 0 // current position
    
    var fonts = [Int: String]()  // should be BTree
    
    public init() { }
    
    public func next(step: Int = 1) {
        position += 1
    }
    
    public func insert(quantity: Int = 1) {
        position += quantity
    }
    
    public func getFont() -> String {
//        print(fonts)
        return fonts[position] ?? "system-font"
    }
    
    public func setFont(font: String, span: Int = 1) {
        
        var s = 1
        
        while s <= span {
            fonts[position + s] = font
            s += 1
        }
        
//        dump(fonts)
    }
}

