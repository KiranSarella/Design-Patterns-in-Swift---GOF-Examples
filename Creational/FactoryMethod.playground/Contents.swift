import UIKit


/// motivation example
/*
var drawingApplication = DrawingApplication()
// doc 1
drawingApplication.newDocument(name: "swift.md")
drawingApplication.currentDocument?.save()
// doc 2
drawingApplication.newDocument(name: "vapor.md")
drawingApplication.currentDocument?.save()
*/


/*
print("\n")
/// Default implementation for Creator (Application)
var unknowApplication = UnknownApplication()
unknowApplication.newDocument(name: "blob")
unknowApplication.currentDocument?.save()
*/



/*
print("\n")
/// sample example
// client 1
let bombedMazeGame = BombedMazeGame()
let bmaze = bombedMazeGame.createMaze()
bmaze.render()

// client 2
let enhancedMazeGame = EnhancedMazeGame()
let emaze = enhancedMazeGame.createMaze()
emaze.render()
*/
 
 

/*
/// Parallel Class Hierarchy
let lineFigure = LineFigure()
let lineManipulator = lineFigure.createManipulator()  // here client itself is accessing factory method
lineManipulator.downClick()

/// Parallel Class Hierarchy - Default Implementation
let defaultFigure = DefaultFigureD()
let defaultManipulator = defaultFigure.createManipulatorD()
defaultManipulator.downClick()
*/

/*
/// Parameterized factory methods
let defaultCreator = DefaultCreator()
let _ = defaultCreator.createProduct(productID: "MY")

let myCreator = MyCreator()
let _ = myCreator.createProduct(productID: "THEIRS")
let _ = myCreator.createProduct(productID: "MY")
*/


/*
/// Parameterized factory methods -- real use case.
/// ** don't confuse parameterized factory method with default helper parameterized  function.
/// newDocument(name: String) -- is helper function
/// open(env: String) -- is parameterized factory method.
var defaultFileManager = DefaultFileManager()
defaultFileManager.newDocument(name: "todo.md")

var remoteFileManager = RemoteFileManager()
remoteFileManager.newDocument(name: "todo.md")

// client can directly use factory method
var fileMgr = DefaultFileManager()
let todoFile = fileMgr.createDocument("todo.md")
todoFile.open(env: "dropbox")
*/



/*
/// Return Class Type

var graphApp = GraphApp()
let docClass = graphApp.documentClass().init()
docClass.whoAmI()
*/



/// Lazy Initilalization
var concreteCreator9 = ConcreteCreator9()
let _ = concreteCreator9.getProduct()
let _ = concreteCreator9.getProduct()
let _ = concreteCreator9.getProduct()
