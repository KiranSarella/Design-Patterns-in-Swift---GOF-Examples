import Foundation


public class TreeDisplay2 {
    
    var root: GraphicNode!
    
    private var delegate: TreeAccessorDelegate!
    
    public init() {
        
    }
    
    public func setDelegate(delegate: TreeAccessorDelegate) {
        self.delegate = delegate
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
        
        root = delegate.createGraphicNode(node: node)
        
        buildTree(node: node, parent: root)
    }
    
    func buildTree(node: Node, parent: GraphicNode) {
        
        // add children
        let children = delegate.getChildren(node: node)
        // dfs
        for child in children {
            let current = delegate.createGraphicNode(node: child)
            addGraphicNode(current, to: parent)
            buildTree(node: child, parent: current)
        }
    }
    
    
    func addGraphicNode(_ graphicNode: GraphicNode, to parent: GraphicNode) {
        parent.children.append(graphicNode)
    }
}


public protocol TreeAccessorDelegate {
    
    func getChildren(node: Node) -> [Node]
    func createGraphicNode(node: Node) -> GraphicNode
}


