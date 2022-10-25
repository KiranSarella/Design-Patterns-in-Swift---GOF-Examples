import Foundation

public class ASCII7Stream: StreamDecorator {
    public var component: MyStream
    
    public init(stream: MyStream) {
        self.component = stream
    }
    
    public func handleBufferFull() {
        ascii7()
    }
    
    func ascii7() {
        print(#function)
        self.component.handleBufferFull()
    }
}

public class CompressingStream: StreamDecorator {
    public var component: MyStream
    
    public init(stream: MyStream) {
        self.component = stream
    }
    
    public func handleBufferFull() {
        compressDataInBuffer()
        component.handleBufferFull()
    }
    
    func compressDataInBuffer() {
        print(#function)
    }
}

