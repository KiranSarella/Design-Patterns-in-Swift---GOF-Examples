import Foundation

// ConcreteBuilders

public protocol ASCIIConverter {
    func convertCharacter()
    func getASCIIText()
}

public protocol TeXConverter {
    func convertCharacter()
    func convertFontChange()
    func convertParagraph()
    func getTeXText()
}

public protocol TextWidgetConverter {
    func convertCharacter()
    func convertFontChange()
    func convertParagraph()
    func getTextWidget()
}

// Products
public class ASCIIText: ASCIIConverter, TextConverter {
    
    var name = "ASCII"
    
    public init() { }
    
    public func convertCharacter() {
        print(name, #function)
    }
    
    public func getASCIIText() {
        print(name, #function)
    }
}

public class TeXText: TeXConverter, TextConverter {
    
    var name = "TeXText"
    
    public init() { }
    
    public func convertCharacter() {
        print(name, #function)
    }
    
    public func convertFontChange() {
        print(name, #function)
    }
    
    public func convertParagraph() {
        print(name, #function)
    }
    
    public func getTeXText() {
        print(name, #function)
    }
}

public class TextWidget: TextWidgetConverter, TextConverter {
    
    var name = "TextWidget"
    
    public init() { }
    
    public func convertCharacter() {
        print(name, #function)
    }
    
    public func convertFontChange() {
        print(name, #function)
    }
    
    public func convertParagraph() {
        print(name, #function)
    }
    
    public func getTextWidget() {
        print(name, #function)
    }
    
    
}
