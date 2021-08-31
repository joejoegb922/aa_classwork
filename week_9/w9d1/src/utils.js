// Function.prototype.inherits = function (ParentClass) { 
//     function Surrogate() {};
//     Surrogate.prototype = ParentClass.prototype;
//     this.prototype = new Surrogate(); 
//     this.prototype.constructor = this;
// }
// function Util(){

// }

const Util = {
    randomVec(length) {
        const deg = 2 * Math.PI * Math.random();
        return Util.scale([Math.sin(deg), Math.cos(deg)], length);
    },
    // Scale the length of a vector by the given amount.
    scale(vec, m) {
        return [vec[0] * m, vec[1] * m];
    }
};

Util.inherits = function (childClass, parentClass) {
    function Surrogate(){};
    Surrogate.prototype = parentClass.prototype;
    childClass.prototype = new Surrogate();
    childClass.prototype.constructor = childClass;
}

module.exports = Util;