import Foundation

public class MemoryStream: MyStream {
    let name = "memory stream"
    public func handleBufferFull() {
        print(name, #function)
    }
}


public class FileStream: MyStream {
    let name = "file stream"
    
    public init() { }
    
    public func handleBufferFull() {
        print(name, #function)
    }
}




