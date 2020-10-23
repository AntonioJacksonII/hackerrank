function processData(input) {
    splitInput = input.split('\n');
    t = parseInt(splitInput[0]);

    for ( i = 0; i < t; i++) {
        var evenChars = '';
        var oddChars = '';
        var inputString = splitInput[i + 1];
        var splitString = inputString.split('');
        splitString.forEach(splitCharacters);
        console.log(`${evenChars} ${oddChars}`);
    }
    function splitCharacters(char, index) {
        if (index % 2 == 0) {
            evenChars += char;
        }
        else {
            oddChars += char;
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
