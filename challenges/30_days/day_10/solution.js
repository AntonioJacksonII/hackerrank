'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.replace(/\s*$/, '')
        .split('\n')
        .map(str => str.replace(/\s*$/, ''));

    main();
});

function readLine() {
    return inputString[currentLine++];
}



function main() {
    const n = parseInt(readLine(), 10);
    
    var binary = n.toString(2).split('');
    var consecutiveCounter = 1;
    var consecutiveArray = [];
    binary.forEach(countConsecutive);
    
    function countConsecutive(digit, index) {
        if(binary[index] === binary[index + 1]) {
            consecutiveCounter++;
        }
        else {
            consecutiveArray.push(consecutiveCounter);
            consecutiveCounter = 1;
        }
    }
    console.log(Math.max(...consecutiveArray));
}