import React, { Component } from "react";
//import TableBody from "./TableBody";
//import TableHeader from "./TableHeader";
import TableBody from "../props/TableBody";
import TableHeader from "../props/TableHeader";

// Function Component
/*export default function Table(){
    return(        
        <table border="1" class="table table-bordered">
            <TableHeader/>
            <TableBody/>
        </table>       
    )
}*/

// Class Component

export default class Table extends Component{
    render(){
        const {employeesData} = this.props;
        return(
            <table border="1" class="table table-bordered">
                <TableHeader/>
                <TableBody employeesData = {employeesData}/>
            </table>  
        )
    }
}