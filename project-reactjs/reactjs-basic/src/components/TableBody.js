import React, { Component } from "react";

// Function Component
/*export default function TableBody(){
    return(
        <tbody>
            <tr>
                <td> Ramesh</td>
                <td> Software Developer</td>
            </tr>
            <tr>
                <td> Tony</td>
                <td> Software Developer</td>
            </tr>
            <tr>
                <td> Pramod</td>
                <td> Software Developer</td>
            </tr>
            <tr>
                <td> Santosh</td>
                <td> QA Engineer</td>
            </tr>
        </tbody>
    )
}*/

// Class Component
export default class TableBody extends Component{
    render(){
        return(
            <tbody>
                <tr>
                    <td> Ramesh</td>
                    <td> Software Developer</td>
                </tr>
                <tr>
                    <td> Tony</td>
                    <td> Software Developer</td>
                </tr>
                <tr>
                    <td> Pramod</td>
                    <td> Software Developer</td>
                </tr>
                <tr>
                    <td> Santosh</td>
                    <td> QA Engineer</td>
                </tr>
            </tbody>
        )
    }
}