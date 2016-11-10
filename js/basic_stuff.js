//: Playground - noun: a place where people can play

var str = "Hello, my playground";

var newStr = str + " foo";

var baz = newStr.toUpperCase();

var wee = null;

if (baz.includes("GROUND")) {  // or the ol' indexOf('foo') != -1
  wee = 3;
}

if (wee != null) {
  console.log("Wee is present!");
} else {
  console.log("It's not.");
}

console.log (newStr);
console.log (wee);

for (var i = 0; i <= 5; i++) {
  console.log(i);
}

var myArray = [1,7,8];

var growingArray = [];

myArray.forEach(function(i) {
  console.log(`That number is ${i}`);

  if (i > 2) { growingArray.push(i + 23) }
});

console.log(growingArray);
