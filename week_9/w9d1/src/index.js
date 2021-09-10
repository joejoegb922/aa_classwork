// console.log("Webpack is working!")
const Asteroid = require("./asteroid.js");
const MovingObject = require("./moving_object.js");
const Util = require("./utils.js")

window.addEventListener('DOMContentLoaded', (event) => {
    const canvasElement = document.getElementById("game-canvas");
//     const mo = new MovingObject({
//     pos: [30, 30],
//     vel: [10, 10],
//     radius: 5,
//     color: "#00FF00"
// });
    const ctx = canvasElement.getContext("2d");
    window.ctx = ctx; 
    window.MovingObject = MovingObject;
    window.Util = Util;
    window.Asteroid = Asteroid;
});


