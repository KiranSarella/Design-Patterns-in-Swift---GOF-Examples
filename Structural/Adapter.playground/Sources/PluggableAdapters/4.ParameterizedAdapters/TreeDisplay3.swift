import Foundation

public class TreeDisplay3 {
    
    var root: GraphicNode!
    
    // blocks / closures
    public var createGraphicNodeBlock: ((Node) -> (GraphicNode))?
    public var getChildrenBlock: ((Node) -> ([Node]))?
    
    public init() {
        
    }
    
    public func display() {
        display(root: root)
    }
    
    func display(root: GraphicNode) {
        // dfs
        print(" \(root.imageName) \(root.title)  ")
        for child in root.children {
            display(root: child)
        }
    }
    
    public func buildTree(node: Node) {
        
        root = createGraphicNodeBlock!(node)
        
        buildTree(node: node, parent: root)
    }
    
    func buildTree(node: Node, parent: GraphicNode) {
        
        // add children
        let children = getChildrenBlock!(node)
        // dfs
        for child in children {
            let current = createGraphicNodeBlock!(child)
            addGraphicNode(current, to: parent)
            buildTree(node: child, parent: current)
        }
    }
    
    
    func addGraphicNode(_ graphicNode: GraphicNode, to parent: GraphicNode) {
        parent.children.append(graphicNode)
    }
}
