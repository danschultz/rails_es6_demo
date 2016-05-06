import * as math from "./math";

export class Point {
  constructor(x, y) {
    this._x = x;
    this._y = y;
  }

  add(other) {
    return new Point(math.add(this.x, other.x), math.add(this.y, other.y));
  }

  toString() {
    return `{x: ${this.x}, y: ${this.y}}`
  }

  get x() {
    return this._x;
  }

  get y() {
    return this._y;
  }
}
