import Foundation

public class BookEditor {
    
    public init() { }
    
    public func prepareBooks() {
        
        var designPatterns: Notebook = Book(bookName: "Design Patterns")
        // c
        var creational: Notebook = Book(bookName: "Creational")
        var factoryMethod: Notebook = Book(bookName: "factory method")
        var builder: Notebook = Book(bookName: "Builder")
        
//        creational.notebooks = [factoryMethod, builder]

        creational.add(notebook: &factoryMethod)
        creational.add(notebook: &builder)
        
        // s
        var structural: Notebook = Book(bookName: "Structural")
        var composite: Notebook = Book(bookName: "Composite")
        var adapter: Notebook = Book(bookName: "Adapter")
        
        structural.add(notebook: &composite)
        structural.add(notebook: &adapter)
        
        // b
        var behavioural: Notebook = Book(bookName: "Behavioural")
        var strategy: Notebook = Book(bookName: "strategy")
        var memento: Notebook = Book(bookName: "memento")

        behavioural.add(notebook: &strategy)
        behavioural.add(notebook: &memento)
        
        designPatterns.add(notebook: &creational)
        designPatterns.add(notebook: &structural)
        designPatterns.add(notebook: &behavioural)
        
        designPatterns.draw(level: 0)
    }
}
