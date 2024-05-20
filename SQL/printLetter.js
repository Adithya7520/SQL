// In this challenge, we practice looping over the characters of string. Check out the attached tutorial for more details.

// Task

// First, print each vowel in  on a new line. The English vowels are a, e, i, o, and u, and each vowel must be printed in the same order as it appeared in .
// Second, print each consonant (i.e., non-vowel) in  on a new line in the same order as it appeared in .
'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.trim().split('\n').map(string => {
        return string.trim();
    });
    
    main();    
});

function readLine() {
    return inputString[currentLine++];
}

/*
 * Complete the vowelsAndConsonants function.
 * Print your output using 'console.log()'.
 */
function vowelsAndConsonants(s) {
    let letters = s.split("")
     let newItem1 = [];
     let newItem2 = [];
     letters.forEach(ele  =>{
         if('aeiou'.includes(ele)){
             newItem1.push(ele)
         }else{
             newItem2.push(ele)
         }
     })
     let  newItem3 = newItem1.concat(newItem2)
     newItem3.map((ele)=>{
         console.log(ele)
     })
}


function main() {
    const s = readLine();
    
    vowelsAndConsonants(s);
}