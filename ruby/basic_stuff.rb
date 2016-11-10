# Playground - noun: a place where people can play

str = "Hello, my playground"

newStr = str + " foo"

baz = newStr.upcase

wee = nil

if baz.include?("GROUND")
  wee = 3
end

unless wee == nil
  puts("Wee is present!")
else
  puts("It's not.")
end

puts (newStr)
puts (wee)

someRange = 0..5   # ..< and ... in Swift are opposite of Ruby's .. and ... !!!

someRange.each do |i|
  puts(i)
end

myArray = [1,7,8]

growingArray = []

myArray.each do |i|
  puts("That number is #{i}")

  growingArray << i + 23 if i > 2
end

puts(growingArray.inspect)
