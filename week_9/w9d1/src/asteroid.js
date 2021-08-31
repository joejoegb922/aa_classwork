const Util = require("./utils.js") 
const MovingObject = require("./moving_object.js") 
const DEFAULT = {color: "#696969", radius: 10, movingLength: 10}

function Asteroid(options){
    options.color = DEFAULT.color;
    options.radius = DEFAULT.radius;
    options.vel = Util.randomVec(DEFAULT.movingLength);
    MovingObject.call(this, options)
}

Util.inherits(Asteroid, MovingObject);
module.exports = Asteroid;