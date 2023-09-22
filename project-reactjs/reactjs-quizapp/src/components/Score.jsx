import { Component } from "react";

export default class Score extends Component{
    render(){
        const{score} = this.props;
    return(
        <div>
            <h2>Results</h2>
            <h4>You score: {score}</h4>
        </div>
    )
    }
    
}