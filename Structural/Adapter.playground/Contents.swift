import UIKit

//MARK: sample code
let drawingEditor = DrawingEditor()
drawingEditor.printEachShapeDetail()


//MARK: two-way aadapter
// client 1
let unidraw = Unidraw()
unidraw.states.append(UniState())
// to let QOCA propagate solutions to Unidraw, StateVariable must be adapted to ConstraintVariable.
unidraw.states.append(ConstraintStateAdapter())

// client 2
let qoca = QOCA()
qoca.constraints.append(QOCAConstraint())
// To make Unidraw work with QOCA, ConstraintVariable must be adapted to StateVariable
qoca.constraints.append(ConstraintStateAdapter())



// MARK: pluggable adapters - basic
print("\npluggable adapters - basic")
let root = Node(name: "root")
root.children = [Node(name: "c1"), Node(name: "c2"), Node(name: "c3")]


let treeDisplay = TreeDisplay()
treeDisplay.buildTree(node: root)
treeDisplay.display()


// MARK: pluggable adapters - abstract operations
print("\npluggable adapters -  abstract operations")
// directory structure
// goal is, don't use Node class/interface as a superclass.
let rootDirectory = Directory(name: "home")
rootDirectory.subDirectories = [Directory(name: "documents"), Directory(name: "downloads"), Directory(name: "desktop")]

// existing directory hierarchy
let directoryHierarchy = DirectoryHierarchy(root: rootDirectory)
// mapping directory hierarchy to tree display
let directoryTreeDisplay = DirectoryTreeDisplay(dirH: directoryHierarchy)
directoryTreeDisplay.buildTree()
directoryTreeDisplay.display()

// todo: need to convert above code to swifty way (protocols) and also using generics


// MARK: pluggable adapters - delegate objects
print("\npluggable adapters - delegate objects")
let directoryBroswer = DirectoryBrowser(dirH: directoryHierarchy)

let treeDisplay2 = TreeDisplay2()
treeDisplay2.setDelegate(delegate: directoryBroswer)
treeDisplay2.buildTree(node: directoryBroswer.getRootNode())
treeDisplay2.display()

// observation: adventage of delegate is no subclass of actual widget is needed.


// MARK: pluggable adapter - parameterized
print("\npluggable adapter - parameterized")
let directoryBroswer2 = DirectoryBrowser2(dirH: directoryHierarchy)
let treeDisplay3 = TreeDisplay3()
treeDisplay3.createGraphicNodeBlock = directoryBroswer2.createGraphicNode(node:)
treeDisplay3.getChildrenBlock = directoryBroswer2.getChildren(node:)
treeDisplay3.buildTree(node: directoryBroswer2.getRootNode())
treeDisplay3.display()

