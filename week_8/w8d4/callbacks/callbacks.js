class Clock {
    constructor () {
        const today = new Date();
        // let time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
        // console.log(time);
        this.hours = today.getHours();
        this.minutes = today.getMinutes();
        this.seconds = today.getSeconds();
        this.printTime();
        setInterval(this._tick.bind(this), 1000);
    }
    printTime () {
        console.log(`${this.hours}:${this.minutes}:${this.seconds}`);
    }
    _tick () {
        this.seconds++;
        this.printTime();
    }
}

// setInterval(function () { 
//     return 
// }, 1000);

// const clock = new Clock();

const readline = require("readline");
const reader = readline.createInterface({
    input: process.stdin, 
    output: process.stdout
});

// function addNumbers(sum, numsLeft, completionCallback) {
//     if (sum == undefined) { 
//         let sum = 0;
//     }

//     if (numsLeft > 0) {
//         reader.question("Enter A Number: ", response => { 
//             console.log(sum += parseInt(response));
//             numsLeft--;
//             return addNumbers(sum, numsLeft, completionCallback);
//         })
//     } else {
//         reader.close();
//     }
// }

// addNumbers(0, 3, sum => console.log(`total sum: ${sum}`));

function askIfGreaterThan(el1, el2, callback) {

    reader.question(`Is ${el1} greater than ${el2}: `, response => {
        if (response === "yes") {
            return callback(true); 
        } else if (response === "no") {
            return callback(false);
        } else {
            console.log("Invalid Response");
            return askIfGreaterThan(el1, el2, callback);
        }
    })
}

function innerBubbleSortLoop(arr, i, madeAnySwaps, outerBubbleSortLoop) {
    if (i < arr.length - 1) {
        askIfGreaterThan(arr[i], arr[i+1], function (isGreaterThan) {
            if (isGreaterThan) {
                let temp = arr[i];
                arr[i] = arr[i+1];
                arr[i+1] = temp;
                madeAnySwaps = true;
            }
            return innerBubbleSortLoop(arr, i + 1, madeAnySwaps, outerBubbleSortLoop);
        });
    } 
}



// function absurdBubbleSort(arr, sortCompletionCallback) {

// }
// askIfGreaterThan(1,2, console.log("hello"));
