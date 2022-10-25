import Foundation

// Client, Target

public class Node {
    
    public var name: String
    public var children = [Node]()
    
    public init(name: String) {
        self.name = name
    }
}

public class GraphicNode {
    
    var imageName: String
    var title: String
    
    var children = [GraphicNode]()
    
    public init(imageName: String, title: String) {
        self.imageName = imageName
        self.title = title
    }
    
    
}

public class TreeDisplay {
    
    var root: GraphicNode!
    
    public init() {
        
    }
    
    // abstract methods
    func getChildren(node: Node) -> [Node] {
        
        return node.children
    }
    
    func createGrahpicNode(node: Node) -> GraphicNode {
        
        return GraphicNode(imageName: "tree > ", title: node.name)
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
        
        root = createGrahpicNode(node: node)
        
        buildTree(node: node, parent: root)
    }
    
    func buildTree(node: Node, parent: GraphicNode) {
        
        // add children
        let children = getChildren(node: node)
        // dfs
        for child in children {
            let current = createGrahpicNode(node: child)
            addGraphicNode(current, to: parent)
            buildTree(node: child, parent: current)
        }
    }
    
    
    func addGraphicNode(_ graphicNode: GraphicNode, to parent: GraphicNode) {
        parent.children.append(graphicNode)
    }
}
