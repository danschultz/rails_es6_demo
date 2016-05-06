import * as geom from "./geom";
import * as App from "./views/app";
import {ReactDOM} from "react";

export function main(container) {
  var pointA = new geom.Point(1, 2);
  var pointB = new geom.Point(1, 2);
  var pointC = pointA.add(pointB);

  console.log(`Result: ${pointC}`);

  ReactDOM.render(<App.View/>, container);
}
