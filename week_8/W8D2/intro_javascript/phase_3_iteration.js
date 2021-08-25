Array.prototype.bubbleSort = function() {
    let sorted = false;

    while (!sorted) {
        sorted = true;
        for (let i = 0; i < this.length; i++) {
            if (this[i] > this[i + 1]) {
                let temp = this[i];
                this[i] = this[i + 1];
                this[i+1] = temp;

                sorted = false;
            }
        }
    }
    return this;
}

String.prototype.substrings = function() {
    let subs = [];

    for (let i = 0; i < this.length; i++) {
        for (let j = i+1; j <= this.length; j++) {
            let sub = this.slice(i,j);
            
            subs.push(sub);
        }
    }
    return subs;
}
