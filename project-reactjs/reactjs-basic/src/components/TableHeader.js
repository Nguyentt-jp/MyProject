import React, { Component } from "react";

// Function Component
/*export default function TableHeader(){
    return(
        <thead className="table-dark">
            <tr>
                <th>Employee Name</th>
                <th>Employee Role</th>
            </tr>
        </thead>
    )
}*/

// Class Component
export default class TableHeader extends Component{
    render(){
        return(
            <thead className="table-success">
                <tr>
                    <th>Employee Name</th>
                    <th>Employee Role</th>
                </tr>
            </thead>
        )
    }
}