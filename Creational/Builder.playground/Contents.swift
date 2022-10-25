import UIKit


// 1.Text Convert
let textConverter: TextConverter & ASCIIConverter = ASCIIText() // client can know ASCIIText?
let rtfReader = RTFReader(textConverter: textConverter)
rtfReader.parseRTF()            // now director will execute several methods/steps with given converter builder
textConverter.getASCIIText()    // finally client will get result from builder object


// observations
// Value of type 'TextConverter' has no member 'getASCIIText'   -- so need to create builder explictly by the client



// 2.MazeBuilder

let builder = StandardMazeBuilder()
let game = MazeGame()
game.createMaze(builder: builder)
let maze = builder.getMaze()


let countingBuilder = CountingMazeBuilder()
game.createMaze(builder: countingBuilder)
print(countingBuilder.getCounts())

