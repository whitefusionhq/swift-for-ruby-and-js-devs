"use strict";

let Attributable = (superclass) => class extends superclass {
  setAttribute(key, value) {
    this.attributes[key] = value;
  }

  formattedAttributes() {
    let ret = "";

    for (var key in this.attributes) {
      ret += `| key: ${key}\n  value: ${this.attributes[key]} |\n`;
    }

    return ret;
  }
};

class BaseModel extends Attributable(class {}) {
  constructor() {
    super();
    this.attributes = {};
  }
}

class SomeModel extends BaseModel {
  printFormattedAttributes() {
    console.log(this.formattedAttributes());
  }
}

let obj = new SomeModel();
obj.setAttribute("car", "Mazda");
obj.setAttribute("year", 2011);

obj.printFormattedAttributes();
