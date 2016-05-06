import {React} from "react";
import {View as PersonView} from "./person";
import {Person} from "../../models/person";

export class View extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      person: new Person("John Doe", 22)
    };
  }

  render() {
    let {person} = this.state;
    return (
      <div>
        <PersonView person={person}/>
      </div>
    );
  }
}
