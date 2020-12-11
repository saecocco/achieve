function mailTemplate(name,menu){
  console.log(`${name}さん,今日のランチは${menu}にしましょう。`);
}
mailTemplate("鈴木","ラーメン");

function weather(){
  console.log("晴れ");
  console.log("曇り");
  console.log("雨");
}
weather();

function introduce(name,age){
  console.log(`私の名前は${name}です。年齢は${age}歳です。`);
}
const name = "矢野";
const age  = "28";
introduce(name,age)
