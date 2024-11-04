
const N: number[] = [1, 999, 1000]//[5, 20, 30]//input[0].split(" ").map((line) => Number.parseInt(line.trim()))
const A: number[] = [50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50]//[100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100]//input[1].split(" ").map((line) => Number.parseInt(line.trim())) // .slice(1).map((line) => line.trim());

export const main =(N:number[], A: number[]) => {
const monthlyFee = 50; // 一般会員の毎月の無料利用上限
    const freeLimit = 3; // 無料会員の無料利用上限
    
    const add = (a:number, b:number) => a + b

// 無料会員の合計費用計算
const freePlanCost = A.map(v => v > freeLimit ? (v - freeLimit) * N[0] : 0).reduce(add, 0);

// 一般会員の合計費用計算
const basicPlanCost = N[1] + A.map(v => v > monthlyFee ? (v - monthlyFee) * N[0] : 0).reduce(add, 0);

// プレミアム会員の合計費用計算
const premiumPlanCost = N[2];

// 各プランの費用を比較して最小のものを選択
    const result = Math.min(freePlanCost, basicPlanCost, premiumPlanCost);
return result
}
    
console.log(main(N,A))

