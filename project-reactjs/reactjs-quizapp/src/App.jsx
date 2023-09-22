import 'bootstrap/dist/css/bootstrap.css';
import { Component } from 'react';
import "./App.css"
import qBank from "./components/QuestionBank"
import Question from './components/Question';
import Score from './components/Score';

export default class App extends Component{
    constructor(props){
        super(props);

        this.state = {
            quesBank: qBank,
            currentQues: 0,
            selectOption: "",
            score: 0,
            quizzEnd: false
        };
    }

    handleOptionChange = (e) => {
        this.setState({selectOption: e.target.value});
    }

    handleFormSubmit = (e) => {
        e.preventDefault();
        this.checkAnswer();
        this.handleNextQuestion();
    }

    checkAnswer = () => {
        const {quesBank, currentQues, selectOption} = this.state; 
        if(selectOption === quesBank[currentQues].answer){
            this.setState((prevState) => ({score: prevState.score + 1}))
        };
    }

    handleNextQuestion = () =>{
        const {quesBank, currentQues} = this.state;
        if(currentQues + 1 < quesBank.length){
            this.setState((prevState) => ({
                currentQues: prevState.currentQues +1,
                selectOption: ""
            }));
        }else{
            this.setState({quizzEnd: true});
        }
    }
    render(){
        const {quesBank, currentQues, selectOption, score, quizzEnd} = this.state;
        return(
            <div className='App d-flex flex-column align-items-center justify-content-center'>
                <h1 className='app-title'>QUIZ APP</h1>
                {!quizzEnd ? (
                    <Question 
                        question={quesBank[currentQues]}
                        selectOption={selectOption}
                        onOptionChange={this.handleOptionChange}
                        onSubmit={this.handleFormSubmit}>
                    </Question>
                ) : (
                    <Score 
                        score={score}
                        onNextQuestion={this.handleNextQuestion}
                        className="score">
                    </Score>
                )}
            </div>
        )
    }
}