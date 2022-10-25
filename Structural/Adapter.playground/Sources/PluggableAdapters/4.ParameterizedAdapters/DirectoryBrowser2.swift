import Foundation

// adapter
public class DirectoryBrowser2 {
    
    private var directoryHierarcy: DirectoryHierarchy
    
    private var mapDirs = [String: Directory]()
    
    public init(dirH: DirectoryHierarchy) {
        self.directoryHierarcy = dirH
        
        // mapping [node to directory]
        mapDirs[directoryHierarcy.root.name] = directoryHierarcy.root
        mapNames(directoryHierarcy.root)
    }

    public func getRootNode() -> Node {
        directoryHierarcy.root.prepareNode()
    }
    
    // recursive
    private func mapNames(_ parentDir: Directory) {
        
        for childDir in parentDir.subDirectories {
            mapDirs[childDir.name] = childDir
            mapNames(childDir)
        }
    }
    
    func createFile() {
        
    }
    
    func deleteFile() {
        
    }
    
}

extension DirectoryBrowser2: TreeAccessorDelegate {
    
    public func getChildren(node: Node) -> [Node] {
        
        let directory = mapDirs[node.name]!
        
        let childDirs = directoryHierarcy.getSubdirectories(dir: directory)
        
        let childNodes = childDirs.map { Node(name: $0.name) }
        
        return childNodes
    }
    
    public func createGraphicNode(node: Node) -> GraphicNode {
        return GraphicNode(imageName: "block ()->() ", title: node.name)
    }
    
    
}
