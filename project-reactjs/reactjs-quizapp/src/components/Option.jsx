import { Component } from "react";

export default class Options extends Component{
    render(){
        const {options, selectOption, onOptionChange} = this.props;
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
                                onChange={onOptionChange}
                                className="form-check-input"/>
                            <label className="form-check-label">{option}</label>
                        </div>
                    )
                })}
            </div>
        )
    }
}