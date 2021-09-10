import React from  "react";
import ReactDOM from "react-dom";
import Clock from "./clock"

function Root() {
    return <div>hello</div>
} 

document.addEventListener("DOMContentLoaded", () => {
    const main = document.getElementById("main");
    ReactDOM.render(<Root/>, main) 
})

class Widgets extends React.Component {
    constructor(props) {
        super(props);

    }
}

export default Widgets;