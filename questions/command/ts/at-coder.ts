import * as fs from "fs";

const input: string[] = fs
  .readFileSync("/dev/stdin", "utf8")
  .trim()
  .split("\n");

// N（文字列の数）とS（文字列のリスト）を取得
const N: number = parseInt(input[0].trim());
const S: string[] = input.slice(1).map((line) => line.trim());

const Command = {
  Perfect: "Perfect",
  Great: "Great",
  Good: "Good",
  Bad: "Bad",
  Miss: "Miss",
} as const;

const Judge = {
  PERFECT: "All Perfect",
  FULL_COMBO: "Full Combo",
  FAILED: "Failed",
};


const isPerfect = (e: string) => e === Command.Perfect;
const isGreat = (e: string) => e === Command.Great;

const main = (s: string[]) => {
  switch (true) {
    case s.every(isPerfect):
      return Judge.PERFECT;
    case s.every((e) => [isPerfect, isGreat].some((fn) => fn(e))):
      return Judge.FULL_COMBO;
    default:
      return Judge.FAILED;
  }
};

console.log(main(S));
