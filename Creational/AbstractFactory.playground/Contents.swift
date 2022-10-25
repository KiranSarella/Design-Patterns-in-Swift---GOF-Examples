import UIKit

// client will get a factory object
// with it client can create different products
// all know types to the client are interfaces


// 1. Structure
let factoryX = Lib().createFactory(primary: true)
let productAX = factoryX.createProductA()
productAX.printInfo()

let factoryY = Lib().createFactory(primary: false)
let productBY = factoryY.createProductB()
productBY.display()



/// 2. Widget
let macOSWidget = GUIPackage.getWidgetFactory(os: "mac")!
let macWindow = macOSWidget.createWindow()
macWindow.minimize()


/// 3. Singleton
let macUIManager = UI.getUIFactory(os: "mac")!
let macButton = macUIManager.createButton()
macButton.press()

/// 4. Crearting Products
// <todo>


/// 5. Extensible Factories
let puppyGestureLib = GestureFactoryCreator().createGestureFactory(os: "puppy")
// client could perform a downcast
let tapGesture = puppyGestureLib.makeGesture(type: "tap") as! TapGesture
tapGesture.onTap()

// 6. Sample Code
let game = MazeGame()
let boombedMazeGame = game.createMaze(factory: BombedMazeGame())


