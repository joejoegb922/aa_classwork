const Asteroid = require("./asteroid");



function Game (gameOption) {
    this.DIM_X = gameOption.DIM_X;
    this.DIM_Y = gameOption.DIM_Y;
    this.NUM_ASTEROIDS = gameOption.NUM_ASTEROIDS;
    addAsteroids();
}

Game.prototype.addAsteroids = function () {
    let asteroids = []
    let randPos = this.randomPosition();
    let newAst = new Asteroid({pos: this.randPos});
    asteroids.push(newAst);
}

Game.prototype.randomPosition = function () {
    let x = Math.floor(Math.random() * this.DIM_X);
    let y = Math.floor(Math.random() * this.DIM_Y);
    return [x,y];
}

Game.prototype.draw = function(ctx) {
    
}