import Foundation

public class GTextEditor {
    
    // intrensic - maintains a reference to flyweight(s).
    var row = GRow()

    // extrinsic - computes or stores the extrinsic state of flyweight(s).
    var gc = GlyphContext()
    
    public init() {
       
        
    }
    
    public func previewDisplay() {
        
        print(#function)
        
        // client will be text editor -
        
        // set heading font (from char start to 10)
        gc.position = 0
        gc.setFont(font: "fun-font-heading", span: 10)
        gc.insert(quantity: 10)
        gc.setFont(font: "fun-font-body", span: 10)



        var glyphFactory = GlyphFactory()
        // heading
        gc.position = 0
        row.insert(g: glyphFactory.createCharacter(char: "A"), glyphContext: &gc)
        row.insert(g: glyphFactory.createCharacter(char: "B"), glyphContext: &gc)
        row.insert(g: glyphFactory.createCharacter(char: "A"), glyphContext: &gc)
        print("HEADING FONT: ", gc.getFont())
        // body
        gc.position = 12
        glyphFactory.createCharacter(char: "A")

        print("BODY FONT: ", gc.getFont())

    }
}
