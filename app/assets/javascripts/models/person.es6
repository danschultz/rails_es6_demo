export class Person {
  constructor(name, age) {
    this._name = name;
    this._age = age;
  }

  ageDifference(other) {
    return this.age - other.age;
  }

  get name() {
    return this._name;
  }

  get age() {
    return this._age;
  }
}