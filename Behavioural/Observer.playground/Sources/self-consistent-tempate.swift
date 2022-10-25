import Foundation

/// 5. Making sure Subject state is self-consistent before notification.
///
/// This is related to only subjects - no changes to observers implementations.
/// Instead of subclasses calling notify() method (to prevent any logic/updates missing), use define template method in parent, so that there is no need to call notify() by subclasses. Parent is going to take responsibility.

/// interface
protocol TObserver {
    var id: UUID { get }
    func update(_ subject: TSubject)
    func isDone() -> Bool
}

extension TObserver where Self: Equatable  {
//    static func == (lhs: Subject, rhs: Subject) -> Bool {
//        return lhs.id == rhs.id
//    }
}



protocol TSubject {
    var id: UUID { get }
    mutating func attach(observer: TObserver)
    mutating func detach(observer: TObserver)
    func notify()
    
    var observers: [TObserver] { get set }
    
    func processStateChanges()  // template method
    func updateTimeInterval()   // hook
}

extension TSubject {
    
    mutating func attach(observer: TObserver) {
        observers.append(observer)
    }
    
    mutating func detach(observer: TObserver) {
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
    
    func processStateChanges() {
        // call hooks
        updateTimeInterval()
        
        // finally call notify
        notify()
    }
    
}

extension TSubject where Self: Equatable {
    static func == (lhs: TSubject, rhs: TSubject) -> Bool {
        return lhs.id == rhs.id
    }
}

// concrete classe - subject
public class TClockTimer: TSubject {
    
    var id: UUID = UUID()
    
    private var timer: Timer = Timer()
    
    private var timeInterval: TimeInterval = 0
    
    var observers: [TObserver] = [TObserver]()
    
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
//        // update internal time-keeping state
//        timeInterval += timer.timeInterval
//        // ...
//        notify()
        
        processStateChanges()
    }
    
    func updateTimeInterval() {
        // update internal time-keeping state
        timeInterval += timer.timeInterval
    }
}

// concrete class - observer
public class TDigitalClockView: TObserver {
    
    var id: UUID = UUID()
    var isDisabled = false
    var subject: TClockTimer
    
    public init(clockTimer: TClockTimer) {
        self.subject = clockTimer
        self.subject.attach(observer: self)
    }
    
    deinit {
        self.subject.detach(observer: self)
    }
    
    
    func update(_ theChangedSubject: TSubject) {
      
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
public class TAnalogClockView: TObserver {
    var id: UUID = UUID()
    var isDisabled = false
    var subject: TClockTimer
    
    public init(clockTimer: TClockTimer) {
        self.subject = clockTimer
        // register notification
        self.subject.attach(observer: self)
    }
    
    deinit {
        self.subject.detach(observer: self)
    }
    
    func update(_ theChangedSubject: TSubject) {
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
