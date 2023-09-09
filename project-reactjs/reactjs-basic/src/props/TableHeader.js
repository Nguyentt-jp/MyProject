import { Component } from "react";

export default class TableHeader extends Component{
    render(){
        return(
            <thead className="table-dark">
                <tr>
                    <th> Employee Name </th>
                    <th> Employee Role </th>
                </tr>
            </thead>
        )
    }
}