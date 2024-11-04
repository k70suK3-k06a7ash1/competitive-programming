import { expect, test } from "vitest";
import {main} from "./index"
test("case1", () => {
  const N: number = 4// Number.parseInt(input[0].trim());
const A: number[] = [3,10,7,3]// input[1].split(" ").map((line) => Number.parseInt(line.trim())) // .slice(1).map((line) => line.trim());
const P: number[] = [31,41, 59, 26, 53, 58, 97, 93, 23, 84]// input[2].split(" ").map((line) => Number.parseInt(line.trim())) //.slice(2).map((line) => line.trim());

  expect(main(N,A,P)).eq(299);
});


test("case2", () => {
  const N: number = 10
  const A: number[] = [7, 7, 7, 7, 7, 7, 7, 7, 7, 7]
  const P: number[] = [1, 1, 1, 1, 1, 1, 1000000000, 1, 1, 1]
  expect(main(N,A,P)).eq(10000000000
);
});