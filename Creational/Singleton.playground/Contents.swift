import UIKit

// 1.SampleCode
mazeType = "bombed"
let mazeFactory1 = MazeFactory.instance()
mazeFactory1.createGame()


// 2.RegistryOfSingletons
print()
triggerRegistration()

let singleton = Singleton.instance()
singleton.runProgram()
