// import * as fs from "node:fs";

// const input: string[] = fs
//   .readFileSync("/dev/stdin", "utf8")
//   .trim()
//   .split("\n");

const N: number = 4// Number.parseInt(input[0].trim());
const A: number[] = [3,10,7,3]// input[1].split(" ").map((line) => Number.parseInt(line.trim())) // .slice(1).map((line) => line.trim());
const P: number[] = [31,41, 59, 26, 53, 58, 97, 93, 23, 84]// input[2].split(" ").map((line) => Number.parseInt(line.trim())) //.slice(2).map((line) => line.trim());

// const result = [...Array(N)].map((_, i) =>  P[A[i]-1]).reduce((sum, element) =>  (sum + element), 0);
const result = Array.from({ length: N }, (_, i) => P[A[i] - 1]).reduce((sum, element) => sum + element, 0);

console.log(result)