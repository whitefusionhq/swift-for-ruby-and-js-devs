"use strict";

class PondAnimal {

  constructor() {
    this.sound = "";
    this.flies = false;
  }

  describe() {
    console.log(`I make ${this.sound} sounds`);
    if (this.flies) {
      console.log("I can fly!");
    } else {
      console.log("I can't fly :(");
    }
  }
}

class Frog extends PondAnimal {
  constructor() {
    super();
    this.sound = "ribbit";
  }
}

class Duck extends PondAnimal {
  constructor() {
    super();
    this.sound = "quack";
    this.flies = true;
  }
}

let frog = new Frog();
frog.describe();

let duck = new Duck();
duck.describe();
