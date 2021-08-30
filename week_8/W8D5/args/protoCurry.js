// Function.prototype.curry = function(numArgs){
//   const args = [];
//   const that = this;
//   return function _curriedFunc(val){
//     args.push(val);
//     if(args.length === numArgs){
//       return that(...args);
//     }else{
//       return _curriedFunc;
//     }
//   }
// }


Function.prototype.curry = function(numArgs){
  const args = [];
  const that = this;
  return function _curriedFunc(val){
    args.push(val);
    if(args.length === numArgs){
      return that.apply(null,args);
    }else{
      return _curriedFunc;
    }
  }
}

// sumThree.apply(context,args)

function sumThree(num1, num2, num3) {
  // return `${this} + hello + ${num1}`;
  return num1 + num2 + num3;
}
sumThree([4,20,6])
// sumThree(4, 20, 6); // == 30

// you'll write `Function#curry`!
let f1 = sumThree.curry(3); // tells `f1` to wait until 3 arguments are given before running `sumThree`
f1 = f1(4); // [Function]
f1 = f1(20); // [Function]
f1 = f1(6); // = 30

console.log(f1);
