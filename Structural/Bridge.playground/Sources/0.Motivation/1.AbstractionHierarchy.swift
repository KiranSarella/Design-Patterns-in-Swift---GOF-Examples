import Foundation

public protocol Window {
    func drawText()
    func drawRect()
}


public protocol IconWindow: Window {
    func drawBorder()
}

public protocol TransientWindow: Window {
    func drawCloseBox()
}


