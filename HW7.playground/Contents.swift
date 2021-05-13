import Cocoa

class Login {
    
    enum logIn {
        case allowed
        case declined
        case auto
    }
    enum nameControl {
        case aprovded
        case badName
    }
    var name: String
    var pass: Bool
    var autoRise = logIn.auto

    init(name: String, pass: Bool) {
    self.name = name
    self.pass = pass
}
    
   func autorised() {
    if pass == true {
        autoRise = logIn.allowed
        print("correct") }
        else {
            print("wrong pass")
        }
 
}
}

var user1 = Login(name: "Maria", pass: false)
user1.autorised()

enum auroRiseError: Error {
    case lastTry
    case block
}

var lastTry: Bool = true
var block: Bool = true

func regError() {
    if lastTry {
        print("Its your last try, type pass carefully")
    }
    if block {
        print("Your account is blocked for an hour, try later")
    }
}
func errorThrows() throws {
    if lastTry {
        throw auroRiseError.lastTry
    }
    if block {
        throw auroRiseError.block
    }
    do {
        try errorThrows()
    } catch auroRiseError.lastTry {
        print("Its your last try, type pass carefully")
    } catch auroRiseError.block {
        print("Your account is blocked for an hour, try later")
    }
}
 

