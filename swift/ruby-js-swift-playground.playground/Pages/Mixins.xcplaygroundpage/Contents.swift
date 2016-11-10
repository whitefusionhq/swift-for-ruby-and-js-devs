protocol Attributable {
  var attributes: Dictionary<String, Any> {get set}
  mutating func setAttribute<T>(_ key: String, value: T)
  func formattedAttributes() -> String
}
extension Attributable {
  mutating func setAttribute<T>(_ key: String, value: T) {
    attributes.updateValue(value, forKey: key)
  }

  func formattedAttributes() -> String {
    var ret: String = ""

    for (key, value) in attributes {
      ret += "| key: \(key)\n  value: \(value) |\n"
    }

    return ret
  }
}

class BaseModel: Attributable {
  var attributes = [String: Any]()
}

class SomeModel: BaseModel {
  func printFormattedAttributes() {
    print(formattedAttributes())
  }
}

var obj = SomeModel()
obj.setAttribute("car", value: "Mazda")
obj.setAttribute("year", value: 2011)

obj.printFormattedAttributes()
