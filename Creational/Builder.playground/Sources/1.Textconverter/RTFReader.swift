import Foundation

// Director
public class RTFReader {
    
    enum TokenType {
        case character
        case font
        case paragragh
    }
    
    var tokens = [TokenType]()
    
    // builder instance
    var textConverter: TextConverter
    
    public init(textConverter: TextConverter) {
        
        self.textConverter = textConverter
        
        tokens = [.character, .font, .paragragh]
    }
    
    public func parseRTF() {
        
        for token in tokens {
            switch token {
            case .character:
                textConverter.convertCharacter()
            case .font:
                textConverter.convertFontChange()
            case .paragragh:
                textConverter.convertParagraph()
            }
        }
        
    }
}

// Builder
public protocol TextConverter {
    func convertCharacter()
    func convertFontChange()
    func convertParagraph()
}

extension TextConverter {
    
    public func convertCharacter() {
        print("default")
    }
    
    public func convertFontChange() {
        print("default")
    }
    
    public func convertParagraph() {
        print("default")
    }
}

