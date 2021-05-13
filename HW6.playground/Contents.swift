import Cocoa

struct inStackInt {
    var items = [Int]()
    
    mutating func push(new item: Int) {
        items.append(item)
    }
    
    mutating func pop() -> Int {
        return items.removeFirst()
    }
}

struct arrayQ<Element> {
    var items = [Element]()
    
    mutating func push(new item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeFirst()
    }
    func whoAmI() -> String {
        return "Hi, there are \(items.count) people in the queue, you will be \(items.count + 1)"
    }
    func whoIn() {
        for (index, value) in items.enumerated() {
            print("\(index + 1 ) is \(value)")
        }
    }
    mutating func getIn(name: String) {
        items.append(name as! Element)
        print("Hi \(name) u are the \(items.count) in the queue ")
    }
   // не работает почему? subscript(index: Int) -> Element? {
       // return (index < items.count ? items[index] : nil)
   // }
}
var arrauQueue = arrayQ<String>()
arrauQueue.push(new: "Alice")
print(arrauQueue.items)
arrauQueue.push(new: "Anna")
arrauQueue.push(new: "Boris")
print(arrauQueue.items)
arrauQueue.pop()
print(arrauQueue.items)
print(arrauQueue.whoAmI())
arrauQueue.whoIn()
arrauQueue.getIn(name: "Jilly")
print(arrauQueue.items)
// почему не работает? print(arrauQueue.items[4])
