Array.prototype.myEach = function(callback) {
  for (let i=0; i < this.length; i++) {
    callback(this[i]); 
  }
  return undefined;
}

Array.prototype.myMap = function(callback) {
  let result = [];
  this.myEach(el => result.push(callback(el)));
  return result;
}

Array.prototype.myReduce = function(callback, initialValue) {
  if (!initialValue) {
    initialValue = this[0];
    this.slice(1, this.length).myEach(el => initialValue = callback(initialValue, el));
  } else {
    this.myEach(el => initialValue = callback(initialValue, el));
  }
  return initialValue;
}