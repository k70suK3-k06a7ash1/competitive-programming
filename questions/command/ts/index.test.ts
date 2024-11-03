import { expect, test } from "vitest";
import { main } from ".";
import { Judge } from "./const";

test("case1", () => {
  const input = ["Perfect"];
  expect(main(input)).eq(Judge.PERFECT);
});
