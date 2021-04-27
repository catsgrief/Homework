
enum windowOption: String {
    case open
    case close
}
    enum engineStatus: String {
    case On
    case Off
    }
    enum trunkStatus {
    case under25percent
    case under50percent
    case under75percent
    case full
}

struct Car {
    var model: String
    var year: Int
    var trunk: Int
    var engine: String
    var window: windowOption
    var valueOfTrunk: Int
    
    mutating func winopen(do: windowOption) {
        if window == windowOption.close {
            self.window = windowOption.open
        } else {
            self.window = windowOption.close
        }
    }
}
    
var opel = Car(model: "opel", year: 2020, trunk: 50, engine: "On", window: windowOption.open, valueOfTrunk: 50)
print(opel)
opel.winopen(do: opel.window)
print(opel)
print(opel.window)


struct Truck {
    var model: String
    var year: Int
    var trunk: Int
    var engine: String
    var window: String
    var valueOfTrunk: trunkStatus
    mutating func load(TrunkValue: Int, TrunkStatus: trunkStatus) {
        self.trunk = TrunkValue
        if self.trunk <= 24 {
            self.valueOfTrunk = trunkStatus.under25percent
        } else if self.trunk >= 25 && self.trunk <= 49 {
            self.valueOfTrunk = trunkStatus.under25percent
        } else if self.trunk >= 50 && self.trunk <= 74 {
            self.valueOfTrunk = trunkStatus.under75percent
        } else if self.trunk >= 75 && self.trunk <= 100 {
            self.valueOfTrunk = trunkStatus.full
        }
    }
    
}

var Mers = Truck(model: "Mersedes", year: 2011, trunk: 50, engine: "On", window: "On", valueOfTrunk: trunkStatus.under50percent)
print(Mers)
Mers.load(TrunkValue: Mers.trunk, TrunkStatus: Mers.valueOfTrunk)

print(Mers)
Mers.load(TrunkValue: 99, TrunkStatus: Mers.valueOfTrunk)
print(Mers)
