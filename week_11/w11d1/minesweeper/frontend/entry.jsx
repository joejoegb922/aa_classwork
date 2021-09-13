import React from "react" 
import Game from "./game"

function Root() {
    // return <div className="game"><Game /></div>
}

document.addEventListener("DOMContentLoaded", () => {
    const main = document.getElementById("main");
    ReactDOM.render(<Root />, main)
})