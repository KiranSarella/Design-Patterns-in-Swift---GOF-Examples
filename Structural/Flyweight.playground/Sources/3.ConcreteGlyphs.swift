import Foundation

// The Character subclass just stores a character code:
public class GCharater: Glyph {
   
    
    var charaterCode: Character!
    
    public init(char: Character) {
        self.charaterCode = char
    }
    
    public func draw(window: String) {
        print("\(window) - \(charaterCode ?? "?")")
    }
    
}


public class GRow: Glyph {
    
    var characters = [GCharater]()
    
    public init() { }
    
    public func draw(window: String) {
        print(#function)
        for character in characters {
            character.draw(window: window)
        }
    }
    
    public func insert(g: Glyph, glyphContext: inout GlyphContext) {
//        characters.append(g)
        glyphContext.insert(quantity: 1)
    }
    
}

public class GColumn: Glyph {
    
    var rows = [GRow]()
    
    public init() { }
    
    public func draw(window: String) {
        print(#function)
        for row in rows {
            row.draw(window: window)
        }
    }
    
   
}

