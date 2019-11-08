
# やっと...

```
Success
Details
Runtime: 48 ms, faster than 47.44% of Ruby online submissions for Two Sum.
Memory Usage: 9.7 MB, less than 45.45% of Ruby online submissions for Two Sum.
```

## 改善
もうちょっと考えてみる。その後ベストプラクティスを覗いてみる...

## 思い付かないのでググってみた

Hash Tableを使うとこんなに短くて早いし綺麗になるのか… 涙が出てくる。勉強になったので次の糧にする
https://euro.qrunch.io/entries/IMtqWEs4GTw6XJCf

## leetcodeのdiscussも見てみた
1番voteされてるやつを見てもハッシュ使ってO(n)が最速の模様。  
キーが存在するかの計算量はO(1)なのか…  
https://leetcode.com/problems/two-sum/discuss?orderBy=most_votes

## 教訓
ハッシュ探索の計算量はO(1)。理由↓も納得  
https://www.kunihikokaneko.com/cc/program/hash.pdf
