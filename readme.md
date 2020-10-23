# HackerRank Challenges

This is a repository to store all of the JavaScript HackerRank Challenges completed by [Antonio Jackson](https://github.com/AntonioJacksonII). This repository uses the [hackerrank.js](https://github.com/itho/hackerrank.js) base repository to test the JavaScript code against the HackerRank test cases.

#### Requirements:

- Node v6+

#### Installation:

``` bash
# Clone/fork the repository
git clone git@github.com:AntonioJacksonII/HackerRank_Challenges.git

# Change directory
cd hackerrank

# Install dependencies
npm install
```

#### Usage:

1. All completed challenges are in the `/challenges` directory, within the subdirectory for their tutorial name.
2. To test the code against the HackerRank sample test cases, run the following from the root directory, replacing `/30_days/day_6` with the location of the challenge you want to test:

``` bash
node hackerrank.js challenges/30_days/day_6 --console
```

3. You should see output similar to:
``` bash
  Running HackerRank Challenge:  30_days/day_6  with  1  testcases.

✔ input00.txt

  Success! (1)
```
4. You can also add additional/custom testcases. Just ensure that the input and output filenames match.
