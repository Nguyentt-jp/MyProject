import { Component } from "react";
import Option from "../components/Option";

export default class Question extends Component{
    render(){
        const {question, selectOption, onOptionChange, onSubmit} = this.props;

        return(
            <div>
                <h3>Question {question.id}</h3>
                <h5 className="mt-2">{question.question}</h5>
                <form onSubmit={onSubmit} className="mt-2 mb-2">
                    <Option
                        options={question.options}
                        selectOption={selectOption}
                        onOptionChange={onOptionChange}>
                    </Option>
                    <button type="submit" className="btn btn-primary">
                        SUBMIT
                    </button>
                </form>
            </div>
        )
    }
}