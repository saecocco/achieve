//成績を判定するための関数が必要。成績はｘ，ｙ，ｚの合計
//合計が250以上ならA、200以上249以下だったらB、100以上、199以下だったらC、99点以下だったらD
//合否を判定するための関数が必要。ｘ，ｙ，ｚのいずれかが60点未満だと不合格
function get_achievement(x,y,z){
  let sum = x + y + z;
  if (sum >= 250) {
    return "A";
  }else if(sum >= 200 && sum <= 249){
    return "B";
  }else if (sum >= 100 && sum <=199) {
    return "C";
  }else {
    return "D";
  }
}
function get_pass_or_failure(x,y,z){
  if (x >= 60 && y >= 60 && z >=60 ){
    return "合格";
  }else {
    return "不合格";
  }
}
function judgement(x,y,z){
  let achievement = get_achievement(x,y,z);
  let pass_or_failure = get_pass_or_failure(x,y,z);
  return `あなたの成績は${achievement}です。${pass_or_failure}です！`;
}
console.log(judgement(60,60,60));
