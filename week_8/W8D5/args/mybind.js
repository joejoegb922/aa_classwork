Function.prototype.myBind = function(){
  let args = []
  // for(let i = 0; i < arguments.length;i++){
  //   args.push(arguments[i]);
  // }
  args = Array.from(arguments)

  const that = this;
  ctx = args.shift();

  return function(){

    let args2 = []
    for(let i = 0; i < arguments.length;i++){
      args2.push(arguments[i]);
    }

     that.apply(ctx,args.concat(args2));


  }
}


// Function.prototype.myBind = function(ctx,...args){
//   const that = this
//   return function(...callargs){
//     return that.call(ctx,...args.concat(callargs))
//   }
// }


class Cat {
  constructor(name) {
    this.name = name;
  }

  says(sound, person) {
    console.log(`${this.name} says ${sound} to ${person}!`);
    return true;
  }
}

class Dog {
  constructor(name) {
    this.name = name;
  }
}

const markov = new Cat("Markov");
const pavlov = new Dog("Pavlov");

markov.says("meow", "Ned");
// Markov says meow to Ned!
// true

// bind time args are "meow" and "Kush", no call time args
markov.says.myBind(pavlov, "meow", "Kush")();
// Pavlov says meow to Kush!
// true

// no bind time args (other than context), call time args are "meow" and "a tree"
markov.says.myBind(pavlov)("meow", "a tree");
// Pavlov says meow to a tree!
// true

// bind time arg is "meow", call time arg is "Markov"
markov.says.myBind(pavlov, "meow")("Markov");
// Pavlov says meow to Markov!
// true

// no bind time args (other than context), call time args are "meow" and "me"
const notMarkovSays = markov.says.myBind(pavlov);
notMarkovSays("meow", "me");
// Pavlov says meow to me!
// true