import Foundation


/// interface
protocol Observer {
    var id: UUID { get }
    func update(_ subject: Subject)
    func isDone() -> Bool
}

extension Observer where Self: Equatable  {
//    static func == (lhs: Subject, rhs: Subject) -> Bool {
//        return lhs.id == rhs.id
//    }
}


protocol Subject {
    var id: UUID { get }
    mutating func attach(observer: Observer)
    mutating func detach(observer: Observer)
    func notify()
    
    var observers: [Observer] { get set }
}

extension Subject {
    
    mutating func attach(observer: Observer) {
        observers.append(observer)
    }
    
    mutating func detach(observer: Observer) {
        // remove observer from observers list
//        let index = observers.firstIndex { obs in
//            obs == observer
//        }
//        observers.remove(at: <#T##Int#>)
    }
    
    func notify() {
        for observer in observers {
            if observer.isDone() == false {
                observer.update(self)
            }
        }
    }
}

extension Subject where Self: Equatable {
    static func == (lhs: Subject, rhs: Subject) -> Bool {
        return lhs.id == rhs.id
    }
}

// concrete classe - subject
public class ClockTimer: Subject {
    
    var id: UUID = UUID()
    
    private var timer: Timer = Timer()
    
    private var timeInterval: TimeInterval = 0
    
    var observers: [Observer] = [Observer]()
    
    public init() {
        timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(getTick), userInfo: nil, repeats: true)
    }
    
    func getHour() -> Int {
        return Int(timeInterval) / 3600
    }
    func getMinute() -> Int {
        return Int(timeInterval) / 60 % 60
    }
    func getSecond() -> Int {
        return Int(timeInterval) % 60
    }
    
    @objc func getTick() {
        // update internal time-keeping state
        timeInterval += timer.timeInterval
        // ...
        notify()
    }
}

// concrete class - observer
public class DigitalClockView: Observer {
    
    var id: UUID = UUID()
    var isDisabled = false
    var subject: ClockTimer
    
    public init(clockTimer: ClockTimer) {
        self.subject = clockTimer
        self.subject.attach(observer: self)
    }
    
    deinit {
        self.subject.detach(observer: self)
    }
    
    
    func update(_ theChangedSubject: Subject) {
      
//        // TODO: Generic parameter 'Self' could not be inferred
//        if theChangedSubject == self.subject {
//
//        }
        
        // Updating UI
        let time =
"""
\n
<digital>
\(subject.getHour()):\(subject.getMinute()):\(subject.getSecond())
"""
        print(time)
    }
    
    func isDone() -> Bool {
        return isDisabled
    }
}

// concrete class - observer
public class AnalogClockView: Observer {
    var id: UUID = UUID()
    var isDisabled = false
    var subject: ClockTimer
    
    public init(clockTimer: ClockTimer) {
        self.subject = clockTimer
        // register notification
        self.subject.attach(observer: self)
    }
    
    deinit {
        self.subject.detach(observer: self)
    }
    
    func update(_ theChangedSubject: Subject) {
        // Updating UI
        let time =
"""
\n<analog>
|\(subject.getHour())
||\(subject.getMinute())
|||\(subject.getSecond())
"""
        print(time)
    }
    
    func isDone() -> Bool {
        return isDisabled
    }
}
