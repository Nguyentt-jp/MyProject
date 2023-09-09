import React, { Component } from "react";
import Table from "../components/Table";

export default class PropsTable extends Component{
    render(){
        let employeesData = [{
            "name": "Ramesh",
            "role": "Software Developer"
        },{
            "name": "Tony",
            "role": "Software Developer"
        },
        {
            "name": "Pramod",
            "role": "Software Developer"
        },{
            "name": "Santosh",
            "role": "QA Engineer"
        }];

        return(
            <div>
                <Table employeesData = {employeesData}/>
            </div>
        )
    }
}