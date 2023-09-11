import { Component } from "react";

export default class Auth extends Component{
    render(){
        return(
            <div>
                <input  placeholder="Enter your name"
                        defaultValue={this.props.name}
                        onChange={(e) => this.props.handleChangeName(e.target.value)} 
                />
            </div>
        )
    }
} 