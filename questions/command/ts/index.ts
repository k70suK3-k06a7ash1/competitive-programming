import { Judge } from "./const";
import { isPerfect,isGreat } from "./helpers";

export const main = (s: string[]) => {
  switch (true) {
    case s.every(isPerfect):
      return Judge.PERFECT;
    case s.every((e) => [isPerfect,isGreat].some((fn) => fn(e))):
      return Judge.FULL_COMBO;
    default:
      return Judge.FAILED;
  }
};
