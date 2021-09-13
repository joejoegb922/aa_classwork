import React from "react" 
import Game from "./game"
import ReactDOM from "react-dom"

function Root() {
    return <div className="game"><Game /></div>
}

document.addEventListener("DOMContentLoaded", () => {
    const main = document.getElementById("main");
    ReactDOM.render(<Root />, main)
})