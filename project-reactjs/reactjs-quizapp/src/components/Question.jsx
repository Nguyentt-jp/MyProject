import { Component } from "react";
import Options from "./Option";

export default class Question extends Component{
    render(){
        const {question, selectOption, onOptionChange, onSubmit} = this.props;

        return(
            <div className="">
                <h3>Question {question.id}</h3>
                <h5 className="mt-2">{question.question}</h5>
                <form onSubmit={onSubmit} className="mt-2 mb-2">
                    <Options
                        options={question.options}
                        selectOption={selectOption}
                        onOptionChange={onOptionChange}>
                    </Options>
                    <button type="submit" className="btn btn-primary mt-2">
                        SUBMIT
                    </button>
                </form>
            </div>
        )
    }
}