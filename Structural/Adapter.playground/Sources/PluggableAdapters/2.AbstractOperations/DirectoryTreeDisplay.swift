import Foundation

// Adapter
public class DirectoryTreeDisplay: TreeDisplay {

    private var directoryHierarcy:DirectoryHierarchy
    
    private var mapDirs = [String: Directory]()
    
    public init(dirH: DirectoryHierarchy) {
        self.directoryHierarcy = dirH
    }

    public func buildTree() {
        
        // mapping [node to directory]
        mapDirs[directoryHierarcy.root.name] = directoryHierarcy.root
        mapNames(directoryHierarcy.root)
        
        buildTree(node: directoryHierarcy.root.prepareNode())
    }
    
    // recursive
    private func mapNames(_ parentDir: Directory) {
        
        for childDir in parentDir.subDirectories {
            mapDirs[childDir.name] = childDir
            mapNames(childDir)
        }
    }
    
    override func getChildren(node: Node) -> [Node] {
        
        
        // how to get directory from a node? retrival performance / duplicate memory?
        
        // 1. prepare/get directory for the node
        // 2. get subDirectories
        // 3. prepare node for each subdir
        // 4. send them as array
        
        // Is correct way?
        
//        guard let directory = mapDirs[node.name] else { return [] }
        
        let directory = mapDirs[node.name]!
        
        let childDirs = directoryHierarcy.getSubdirectories(dir: directory)
        
        let childNodes = childDirs.map { Node(name: $0.name) }
        
        return childNodes
    }
    
    override func createGrahpicNode(node: Node) -> GraphicNode {
        return GraphicNode(imageName: "dir / ", title: node.name)
    }
}

extension Directory {
    
    func prepareNode() -> Node {
        
        return Node(name: name)
    }
}
