import Foundation

public class Book: Notebook {
    
    public var parent: Notebook?
    
    public var bookName: String
    
    public var notebooks: [Notebook]?
    
    public var id = UUID()
    
    public init(bookName: String) {
        self.bookName = bookName
    }
    
    public func draw(level: Int = 0) {
        var spaces = ""
        for _ in 0...level {
            spaces += "---"
        }
        print(spaces, bookName, #function)
        if containsChildNotes() {
            for g in notebooks! {
                g.draw(level: level + 1)
            }
        }
        
    }
    
    // implment own child-related operations, if default is not appropriate
    /* .. */
}
