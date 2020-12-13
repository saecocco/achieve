function isOverTen(i){
  if (i >= 10) {
    return true;
  }else {
    return false
  }
}
console.log(isOverTen(10));
console.log(isOverTen(8));

function divide(i,j){
  if (j === 0) {
    return "error";
  }else {
    return i / j;
  }
}
function showResult(i,j,computeFunc){
  let result = computeFunc(i,j);
  if (result === "error") {
    return result;
  }else {
    return `${result * 100}パーセントです`
  }
}
console.log(showResult(2,4,divide));
