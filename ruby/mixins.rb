module Attributable
  attr_accessor :attributes

  def setAttribute(key, value:)
    attributes[key] = value
  end

  def formattedAttributes
    ret = ""

    attributes.each do |key, value|
      ret += "| key: #{key}\n  value: #{value} |\n"
    end

    ret
  end
end

class BaseModel
  include Attributable

  def initialize
    self.attributes = {}
  end
end

class SomeModel < BaseModel
  def printFormattedAttributes
    puts formattedAttributes()
  end
end

obj = SomeModel.new()
obj.setAttribute("car", value: "Mazda")
obj.setAttribute("year", value: 2011)

obj.printFormattedAttributes()
