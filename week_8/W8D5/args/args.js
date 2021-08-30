function sum(){
  let tot = 0;
  for(let i = 0; i<arguments.length;i++){
    tot += arguments[i]
  }
  return tot
}


function sum2(...args){
  let total = 0;
  for(let i = 0; i < args.length; i++){
    total += args[i];
  }
  return total
}

console.log(sum(1, 2, 3, 4) === 10);
console.log(sum(1, 2, 3, 4, 5) === 15);


console.log(sum2(1, 2, 3, 4) === 10);
console.log(sum2(1, 2, 3, 4, 5) === 15);


