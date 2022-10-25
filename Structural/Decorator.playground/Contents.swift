import UIKit


// structure
var concreteComponent = ConcreteComponent()
var concreteDecoratorA = ConcreteDecoratorA(component: concreteComponent)
concreteDecoratorA.operation()

// sample code
// bordered scrollable TextView.
print("\n")
var textView = Textview()

var scrollTextView = ScrollDecorator(visualComponent: textView)

var borderedScrollTextView = BorderDecorator(visualComponent: scrollTextView, borderWidth: 20)

borderedScrollTextView.draw()
//borderedScrollTextView.resetScrollPosition()

scrollTextView.resetScrollPosition()


 
// steams
print("\n")
var aStream: MyStream = CompressingStream(stream: ASCII7Stream(stream: FileStream()))
aStream.handleBufferFull()
