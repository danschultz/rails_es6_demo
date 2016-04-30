import * as geom from "./geom.js";

export function main() {
  var pointA = new geom.Point(1, 2);
  var pointB = new geom.Point(1, 2);
  var pointC = pointA.add(pointB);

  console.log(`Result: ${pointC}`);
}
