import { Component } from "react";

export default class Option extends Component{
    render(){
        const {options, selectOption, onOptinChange} = this.props;
        return(
            <div className="options">
                {options.map((option, index) => {
                    return(
                        <div key={index} className="form-check">
                            <input 
                                type="radio"
                                name="option"
                                value={option}
                                checked={selectOption === option}
                                onChange={onOptinChange}
                                className="form-check-input"/>
                            <label className="form-check-label">{option}</label>
                        </div>
                    )
                })}
            </div>
        )
    }
}