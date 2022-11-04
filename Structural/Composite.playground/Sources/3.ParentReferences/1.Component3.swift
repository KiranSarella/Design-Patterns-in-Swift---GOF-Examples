import Foundation


// Component
public protocol Notebook: AnyObject {
    
    var parent: Notebook? { get set }
    
    var id: UUID { get }
    var bookName: String { get set }
    // shared operations - primitives
    func draw(level: Int)
    
    var notebooks: [Notebook]? { get set }
    
    // child-related operations - containers
    func add(notebook: inout Notebook)
    func remove(notebook: inout Notebook)
    func getChild(id: UUID) -> Notebook?
    func containsChildNotes() -> Bool
}

extension Notebook {

    // leaf and composite - related default behaviour
    public func draw(level: Int) {
        print(bookName, #function)
    }

    // child-related operations - default behaviour
    
    public func add(notebook: inout Notebook) {
        notebook.parent = self
        
        if containsChildNotes() == false {
            notebooks = [Notebook]()
        }
        
        notebooks?.append(notebook)
    }
    
    public func remove(notebook: inout Notebook) {
        notebooks?.removeAll { g in
            g.id == notebook.id
        }
    }
    
    public func getChild(id: UUID) -> Notebook? {
        return notebooks?.first(where: { g in
            g.id == id
        })
    }
    
    public func containsChildNotes() -> Bool {
        return notebooks != nil ? true : false
    }
}
