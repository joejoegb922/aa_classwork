
Function.prototype.curry = function(num){
  const args = [];
  let tot = 0;

  return function _curriedFunc(val){
    args.push(val);
    tot += val;

    if(args.length < num){
      return _curriedFunc;
    }else{
      return tot;
    }
  }
}


function sumThree(num1, num2, num3) {
  return num1 + num2 + num3;
}

sumThree(4, 20, 6); // == 30

// you'll write `Function#curry`!
let f1 = sumThree.curry(3); // tells `f1` to wait until 3 arguments are given before running `sumThree`
f1 = f1(4); // [Function]
f1 = f1(20); // [Function]
f1 = f1(6); // = 30


// console.log(f1);
// console.log(f1)

// or more briefly:
// sumThree.curry(3)(4)(20)(6); // == 30

function curriedSum(numArgs){


  let numbers = [];


  return function _curriedSum(num){
    numbers.push(num)

    if (numbers.length === numArgs){
      let tot = 0;

      for(let i = 0; i < numArgs;i++){
        tot += numbers[i];
      }

      return tot;

    }
    
    
    else{
      return _curriedSum;
    }


  }


}


const sum = curriedSum(4);
v = sum(5)(30)(20)(1); // => 56

console.log(v);

