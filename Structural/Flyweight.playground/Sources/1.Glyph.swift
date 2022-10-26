import Foundation

// intrinsic state
public protocol Glyph {
    
    func draw(window: String, glyphContext: inout GlyphContext)
    
    func setFont(font: String, glyphContext: inout GlyphContext)
    func getFont(glyphContext: inout GlyphContext) -> String
    
    func first(glyphContext: inout GlyphContext)
    func next(glyphContext: inout GlyphContext)
    func isDone(glyphContext: inout GlyphContext) -> Bool
    func current(glyphContext: inout GlyphContext) -> Glyph
    
    func insert(g: Glyph, glyphContext: inout GlyphContext)
    func remove(glyphContext: inout GlyphContext)
    
}

extension Glyph {
    
    public func draw(window: String, glyphContext: inout GlyphContext) {
        
    }
    
    public func setFont(font: String, glyphContext: inout GlyphContext) {
        glyphContext.setFont(font: font, span: 1)
    }
    
    public func getFont( glyphContext: inout GlyphContext) -> String {
        return glyphContext.getFont()
    }
    
    public func first(glyphContext: inout GlyphContext) {
        glyphContext.position = 0
    }
    
    public func next(glyphContext: inout GlyphContext) {
        glyphContext.next()
    }
    
    public func isDone(glyphContext: inout GlyphContext) -> Bool {
        return true
    }
    
    public func current(glyphContext: inout GlyphContext) -> Glyph {
        fatalError()
    }
    
    public func insert(g: Glyph, glyphContext: inout GlyphContext) {
        
    }
    
    public func remove(glyphContext: inout GlyphContext) {
        
    }
}

