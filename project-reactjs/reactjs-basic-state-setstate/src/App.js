import { Component } from 'react';
import Auth from './Auth';
import './App.css';


class App extends Component { 
  constructor(props){
    super(props);
    this.state = {
      name:"",
    }
  }

  handleChangeName = name => {
    this.setState({name});
  }
  render(){
    return(
      <div className="App">      
        <p>Your Name: {this.state.name}</p>
        <Auth name={this.state.name} handleChangeName={this.handleChangeName}/>
      </div>
    );
  }  
}

export default App;
