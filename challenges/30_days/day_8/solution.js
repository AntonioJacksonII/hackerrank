function processData(input) {
    let phoneBook = {};
    inputArray = input.split('\n');
    
    for (i = 1; i <= inputArray[0]; i++) {
        let currentEntry = inputArray[i].split(' ')
        phoneBook[currentEntry[0]] = currentEntry[1];
    }
    
    for (;i < inputArray.length; i++) {
        if (phoneBook[inputArray[i]]) {
            console.log(`${inputArray[i]}=${phoneBook[inputArray[i]]}`)
        } else {
            console.log(`Not found`)
        }
    }
} 

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input);
});
