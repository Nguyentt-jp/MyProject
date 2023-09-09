import { Component } from "react";

export default class TableBody extends Component{
    render(){
        const rows = this.props.employeesData.map((row, index)=>{
            return(
                <tr key={index}>
                    <td>{row.name}</td>
                    <td>{row.role}</td>
                </tr>
            )
        })
        
        return(
            <tbody>{rows}</tbody>
        )
    }
}