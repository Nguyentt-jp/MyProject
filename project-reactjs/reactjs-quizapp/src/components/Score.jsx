export default function Score(){
    const{score, onNextQuestion} = this.props;
    return(
        <div>
            <h2>Results</h2>
            <h4>You score: {score}</h4>
        </div>
    )
}