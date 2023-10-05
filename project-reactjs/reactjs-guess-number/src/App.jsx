import { Component } from 'react';
import './App.css';
import Results from './Result';

export default class App extends Component{

    secret = (Math.floor(Math.random() * 20) + 1);    

    constructor(props){
        super(props);
        this.state = {term: ""};

        this.handleChange = this.handleChange.bind(this);
    };

    handleChange(e){
        this.setState({[e.target.name]: e.target.value});
    }
    
    render(){
        return(
            <div className='app'>
                <h1>Guess Number between 1 to 20</h1>
                <input 
                type="text" 
                name="term"
                value={this.state.term} 
                onChange={this.handleChange}/>
                <Results term={this.state.term} serectNum={this.secret}/>
            </div>
        )
    }
}