import { expect, test } from "vitest";
import {main} from "./index"
test("case1", () => {
const N: number[] = [1, 999, 1000]//[5, 20, 30]//input[0].split(" ").map((line) => Number.parseInt(line.trim()))
const A: number[] = [50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50]//[100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100]//input[1].split(" ").map((line) => Number.parseInt(line.trim())) // .slice(1).map((line) => line.trim());

  expect(main(N,A)).eq(564);
});

