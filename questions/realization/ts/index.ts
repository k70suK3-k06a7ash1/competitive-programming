const N: number = 4// Number.parseInt(input[0].trim());
const A: number[] = [3,10,7,3]// input[1].split(" ").map((line) => Number.parseInt(line.trim())) // .slice(1).map((line) => line.trim());
const P: number[] = [31,41, 59, 26, 53, 58, 97, 93, 23, 84]// input[2].split(" ").map((line) => Number.parseInt(line.trim())) //.slice(2).map((line) => line.trim());

const adjustmentIndex = (e: number) => e - 1
const add = (a: number, b: number) => a + b

export const main = (N:number,A:number[],P:number[]) => Array.from({ length: N }, (_, i) => P[adjustmentIndex(A[i])]).reduce(add, 0);
const result = main(N,A,P)

console.log(result)