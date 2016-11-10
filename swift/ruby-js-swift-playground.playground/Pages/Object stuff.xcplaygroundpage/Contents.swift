import Foundation

class PondAnimal {
  var sound: String = ""
  var flies: Bool = false
  
  func describe() -> Void {
    print("I make \(sound) sounds")
    if flies {
      print("I can fly!")
    } else {
      print("I can't fly :(")
    }
  }
}

class Frog: PondAnimal {
  override init() {
    super.init()
    self.sound = "ribbit"
  }
}
class Duck: PondAnimal {
  override init() {
    super.init()
    self.sound = "quack"
    self.flies = true
  }
}

let frog = Frog()
frog.describe()

let duck = Duck()
duck.describe()