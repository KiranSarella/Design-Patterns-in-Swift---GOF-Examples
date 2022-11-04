import Foundation

// Component
public protocol Graphic {
    
    var id: UUID { get }
    // shared operations - primitives
    func draw(level: Int)
    
    var graphics: [Graphic]? { get set }
    
    // child-related operations - containers
    mutating func add(graphic: Graphic)
    mutating func remove(graphic: Graphic)
    func getChild(id: UUID) -> Graphic?
}

extension Graphic {

    // leaf and composite - related default behaviour
    public func draw(level: Int) {
        print("Graphic Default behaviour", #function)
    }

    // child-related operations - default behaviour
    
    public mutating func add(graphic: Graphic) {
        graphics?.append(graphic)
    }
    
    public mutating func remove(graphic: Graphic) {
        graphics?.removeAll { g in
            g.id == graphic.id
        }
    }
    
    public func getChild(id: UUID) -> Graphic? {
        return graphics?.first(where: { g in
            g.id == id
        })
    }
}
