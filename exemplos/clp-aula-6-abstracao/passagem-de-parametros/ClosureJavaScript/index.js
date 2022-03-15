function somador(x) {
  return  function(y) {
            return x + y; 
          }
}
var soma10 = somador(10);
var soma5 = somador(5);
console.log("Soma 10 a 20: " + soma10(20));
console.log("Soma 5 a 20: " + soma5(20));



