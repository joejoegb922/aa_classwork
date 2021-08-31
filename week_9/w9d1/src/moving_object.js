
// class MovingObject {
//     constructor(pos, vel, radius, color) {
//         this.pos = pos;
//         this.vel = vel;
//         this.radius = radius;
//         this.color = color;
//     }
// }


function MovingObject(options) {
  this.pos = options.pos;
  this.vel = options.vel;
  this.radius = options.radius;
  this.color = options.color;
}

MovingObject.prototype.draw = function(ctx){
  ctx.fillStyle = this.color;
  ctx.beginPath();

  ctx.arc(
    this.pos[0],
    this.pos[1],
    this.radius,
    0,
    2 * Math.PI,
    false
  );

  ctx.fill();
}

MovingObject.prototype.move = function() {
  let x = this.pos[0] + this.vel[0];
  let y = this.pos[1] + this.vel[1];
  this.pos = [x, y];
 
  var canvas = document.getElementById("game-canvas");
  var context = canvas.getContext('2d');
  context.clearRect(0, 0, canvas.width, canvas.height);
   this.draw(ctx);
}

module.exports = MovingObject;