import Foundation




public class GlyphFactory {
    
    let NCHARCODES = 128
    
    var characters = [GCharater?]()
    
    public init() {
        characters = [GCharater?](repeating: nil, count: NCHARCODES)
    }
    
    public func createCharacter(char: Character) -> GCharater {
        let index = Int(char.asciiValue!)
        if characters[index] == nil {
            print("CREATING --> \(char)")
            // create new char
            characters[index] = GCharater(char: char)
        } else {
            print("REUSING --> \(char)")
        }
        
        return characters[index]!
    }
    
    // The other operations simply instantiate a new object each time they're called, since noncharacter glyphs won't be shared:
    
    public func createRow() -> GRow {
        
        return GRow()
    }
    
    public func createColumn() -> GColumn {
        return GColumn()
    }
}
