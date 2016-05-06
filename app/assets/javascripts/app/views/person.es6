import {React} from "react";

export class View extends React.Component {
  render() {
    let {person} = this.props;
    return (
      <div>
        Name: {person.name}, Age: {person.age}
      </div>
    );
  }
}