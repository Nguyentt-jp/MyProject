const Results = ({term, serectNum}) => {
    let result;
    console.log(term, serectNum);
    if(term){
        if(serectNum > term){
            result = 'Lower';
        }else if(serectNum < term){
            result = 'Higher';
        }else if(serectNum == term){
            result = 'Yippee, correct!';
        }else{
            result = 'Enter Valid Input';
        }
    }
    console.log(result)
    return <h3>You Guessed: {result}</h3>;
}

export default Results;