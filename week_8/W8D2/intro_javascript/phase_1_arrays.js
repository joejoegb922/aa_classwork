Array.prototype.uniq = function() {
  let result = [];
  for (let i=0; i < this.length; i++) {
    if (!result.includes(this[i])) {
      result.push(this[i]);
    }
  }
  return result;
}
// let arr = [1, 2, 2, 3, 3, 3]

// console.log(arr.uniq())

Array.prototype.twoSum = function() {
  let pairs = [];
  for (let i=0; i < this.length; i++) {
    for (let j=i+1; j < this.length; j++) {
      if (this[i] + this[j] === 0) pairs.push([i, j]);
    }
  }
  return pairs;
}

// let arr = [1, -1, 2, -2]
// console.log(arr.twoSum())


Array.prototype.tranpose = function() {
  let transposed = [];
  for (let i=0; i < this[0].length; i++) {
    let temp = [];
    for (let j=0; j < this[0].length; j++) {
      temp.push(this[j][i]);
    }
    transposed.push(temp);
  }
  return transposed;
}



