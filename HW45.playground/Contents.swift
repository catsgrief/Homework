import Cocoa
//Задание №4
class Car {
    
    enum engineStatus {
        case on, off
        enum windowStatus {
            case open, close
        }
        enum trunkValueStatus {
            case under25, under50, under75, full
        }
    }
    var model: String
    var year: Int
    var valueOfTrunk: Int
    var engine: engineStatus
    var window: engineStatus.windowStatus
    var trunkStatus: engineStatus.trunkValueStatus
    init (model: String, year: Int, valueOfTrunk: Int, engine: engineStatus, window: engineStatus.windowStatus, trunkstatus: engineStatus.trunkValueStatus) {
        self.model = model
        self.year = year
        self.valueOfTrunk = valueOfTrunk
        self.engine = engine
        self.window = window
        self.trunkStatus = trunkstatus
    }
    func description() {
        print("Model - \(model), year is \(year), value of trunk is \(valueOfTrunk), engine is \(engine), windows are \(window), trunk is \(trunkStatus) ")
    }
}
var mers = Car(model: "Mersedes", year: 2020, valueOfTrunk: 50, engine: Car.engineStatus.off, window: Car.engineStatus.windowStatus.close, trunkstatus: Car.engineStatus.trunkValueStatus.full)
mers.description()
class Sportcar: Car {
    
    enum speedCar {
        case stop
        case min100
        case middle200
        case max300
    }
    var speed: speedCar = speedCar.stop
    
    func actualSpeed () {
        print(speed)
    }
    func speedUp (currentSpeed: speedCar) {
        switch speed {
        case .stop: self.speed = speedCar.min100
        case .min100: self.speed = speedCar.middle200
        case .middle200: self.speed = speedCar.max300
        case .max300: print (" you should stop, current speed is max!")
    }
    }
}
var bugatti = Sportcar(model: "Bugatti", year: 2015, valueOfTrunk: 30, engine: Car.engineStatus.on, window: Car.engineStatus.windowStatus.open, trunkstatus: Car.engineStatus.trunkValueStatus.under25)
bugatti.speedUp(currentSpeed: Sportcar.speedCar.stop)
bugatti.speed
bugatti.speedUp(currentSpeed: bugatti.speed)
bugatti.speed
bugatti.speedUp(currentSpeed: bugatti.speed)
bugatti.speedUp(currentSpeed: bugatti.speed)
bugatti.speed
bugatti.speedUp(currentSpeed: bugatti.speed)

class Truck: Car {
    
    func upLoad (value: Int) {
        self.valueOfTrunk = self.valueOfTrunk + value
        print(self.valueOfTrunk)
    }
    func downLoad (value: Int) {
        self.valueOfTrunk = self.valueOfTrunk - value
        print(self.valueOfTrunk)
    }
}
var volvo = Truck(model: "Volvo", year: 2020, valueOfTrunk: 0, engine: Car.engineStatus.off, window: Car.engineStatus.windowStatus.close, trunkstatus: Car.engineStatus.trunkValueStatus.under25)
volvo.upLoad(value: 20)
print(volvo.valueOfTrunk)
 volvo.downLoad(value: 15)


//задание №5

enum engineStatus {
    case on, off
    enum windowStatus {
        case open, close
    }
}

protocol CarColor {
    var color: String { get set}
    var model: String { get set }
    var year: Int { get set }
    var valueOfTrunk: Int { get set }
    var engine: engineStatus { get set }
    var window: engineStatus.windowStatus { get set }
    
    mutating func descript () -> String
}
extension CarColor {
    mutating func winOption() {
        switch window {
        case engineStatus.windowStatus.open :
            self.window = engineStatus.windowStatus.close
        case engineStatus.windowStatus.close:
            self.window = engineStatus.windowStatus.open
        }
    }
    
    mutating func engineOption() {
        switch engine {
        case engineStatus.off :
            self.engine = engineStatus.on
        case engineStatus.on:
            self.engine = engineStatus.off
        }
    }
}
class SportCar: CarColor {
    var color: String
    
    var model: String
    
    var year: Int
    
    var valueOfTrunk: Int
    
    var engine: engineStatus
    
    var window: engineStatus.windowStatus
    
    var maxSpeed: Int
    
    func descript() -> String {
        return "color is \(color), year - \(year), model is \(model), max speed is \(maxSpeed)"
    }
    
    init(color: String, model: String, year: Int, valueOfTrunk: Int, engine: engineStatus, window: engineStatus.windowStatus, maxSpeed: Int) {
        self.color = color
        self.model = model
        self.year = year
        self.valueOfTrunk = valueOfTrunk
        self.engine = engine
        self.window = window
        self.maxSpeed = maxSpeed
    }
}

var porshe = SportCar(color: "yellow", model: "porshe", year: 2020, valueOfTrunk: 50, engine: engineStatus.off, window: engineStatus.windowStatus.close, maxSpeed: 300)
print(porshe.descript())

class TrunkCar: CarColor {
    var color: String
    
    var model: String
    
    var year: Int
    
    var valueOfTrunk: Int
    
    var engine: engineStatus
    
    var window: engineStatus.windowStatus
    
    var maxValue: Int
    
    func descript() -> String {
        return "color is \(color), year - \(year), model is \(model), value of trunk is \(valueOfTrunk)"
    }
    
    init(color: String, model: String, year: Int, valueOfTrunk: Int, engine: engineStatus, window: engineStatus.windowStatus, maxValue: Int) {
        self.color = color
        self.model = model
        self.year = year
        self.valueOfTrunk = valueOfTrunk
        self.engine = engine
        self.window = window
        self.maxValue = maxValue
    }
}

var volvo2 = TrunkCar(color: "white", model: "volvo", year: 2010, valueOfTrunk: 1000, engine: engineStatus.off, window: engineStatus.windowStatus.close, maxValue: 2000)
print(volvo2.descript())


var bugatti2 = SportCar(color: "black", model: "bugatti", year: 2019, valueOfTrunk: 30, engine: engineStatus.on, window: engineStatus.windowStatus.close, maxSpeed: 350)

extension SportCar: CustomStringConvertible {
   public var description: String {
        return "nice car, it is my favorite. is max speed 300?"
    }
}
//print(bugatti2.description)

extension TrunkCar: CustomStringConvertible {
   public var description: String {
        return "big car, what is a value of trunk?"
    }
}

bugatti2.winOption()
print(bugatti2.window)
bugatti2.winOption()
print(bugatti2.window)
volvo2.engineOption()
print(volvo2.engine)
volvo2.engineOption()
print(volvo2.engine)
