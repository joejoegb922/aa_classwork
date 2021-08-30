Function.prototype.inherits = function (obj) {
    function Surrogate () { }
    Surrogate.prototype.__proto__ = obj.prototype;
    this.prototype = new Surrogate();
    this.prototype.constructor = this;
}

function MovingObject() { }

MovingObject.prototype.destroy = function() {
    console.log("BOOM!");
}

function Ship() { }
Ship.inherits(MovingObject);

Ship.prototype.destroy = function () {
    console.log("SHABOOM!");
}

function Asteroid() { }
Asteroid.inherits(MovingObject);

let ship = new Ship();
let asteroid = new Asteroid();
let movingObj = new MovingObject();
console.log("---------------------")
console.log(ship)
console.log(ship.__proto__)
console.log(ship.constructor)
console.log(ship.prototype)
ship.destroy();

console.log("---------------------")
console.log(asteroid)
console.log(asteroid.__proto__)
console.log(asteroid.constructor)
console.log(asteroid.prototype)
asteroid.destroy();
console.log("---------------------")

console.log(movingObj)
console.log(movingObj.__proto__)
console.log(movingObj.constructor)
console.log(movingObj.prototype)
movingObj.destroy();
console.log("---------------------")

