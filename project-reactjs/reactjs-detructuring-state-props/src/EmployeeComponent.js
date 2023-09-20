import React, { Component } from "react"

// Funtionc Component
/* const Employee = props => {
    const {name, address, mail} = props;
    return(
        <div>
            <h1>Employee: </h1>
            <h2>{name}</h2>
            <h2>{address}</h2>
            <h2>{mail}</h2>
        </div>
    )
} */

// Class Component Props
/*class Employee extends Component{
    render(){
        const {name, address, mail} = this.props;
        return(
            <div>
                <h1>Employee: </h1>
                <h2>{name}</h2>
                <h2>{address}</h2>
                <h2>{mail}</h2>
            </div>
        )
    }
}*/

// Class Component State
class Employee extends Component{
    constructor(props){
        super(props)
        this.state = {nname: "Nguyen", address: "Vung Tau", mail: "nguyen@gmail.com"}
    }
    render(){
        const {nname, address, mail} = this.state;
        return(
            <div>
                <h1>Employee: </h1>
                <h2>{nname}</h2>
                <h2>{address}</h2>
                <h2>{mail}</h2>
            </div>
        )
    }
}
export default Employee;