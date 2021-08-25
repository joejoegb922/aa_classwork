function range(start, end) {
    if (start === end) {
        return [end];
    }
    let arr = [start];
    
    return arr.concat(range(start+1, end));
}

function sumRec(arr) {
    if (arr.length <= 1) {
        return arr[0];
    }

    return arr[0] + sumRec(arr.slice(1))
}

// function exponent(base, exp) {
//     if (exp === 1) {
//         return base;
//     } else if (exp === 0) {
//         return 1;
//     }
//     return base * exponent(base, exp-1);
// }

function exponent(base, exp) {
    if (exp === 1) {
        return base;
    } else if (exp === 0) {
        return 1;
    }
    if (exp % 2 === 0) {
        return exponent(base, exp/2) ** 2;
    } else {
        return base * (exponent(base, (exp - 1) / 2) ** 2);
    }
}

function fibonacci(n) {
    if (n === 0) {
        return [];
    } else if (n === 1) {
        return [1];
    } else if (n === 2) {
        return [1, 1];
    }
    let arr = fibonacci(n-1)

    return arr.concat([arr[arr.length-1] + arr[arr.length-2]]);
}

// function fibonacci(n) {
//     if (n === 0) {
//         return [];
//     }
//     let arr = [1, 1];

//     return arr.push(fibonacci(n - 1) + fibonacci(n - 1));
// }

function deepDup(arr) {
    if (arr.length <= 1) {
        return [arr[0]];
    }

    return [arr[0]].concat(deepDup(arr.slice(1)));
}