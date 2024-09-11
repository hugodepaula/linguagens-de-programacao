const express = require('express');

const app = express();

function espera2s(x) {
  return new Promise(resolve => {
    setTimeout(() => {
      resolve(x);
    }, 5000);
  });
}

async function soma(x) {
  var a = await espera2s(10);
  var b = await espera2s(20);
  return x + a + b;
}


app.get('/', (req, res) => {
  soma(50).then(v => {
    res.send('<body><h1>' + v + "</h1></body>");
  })
  
});

app.listen(3000, () => {
  console.log('server started');
  soma(10).then(v => {
    console.log(v);
  })
  
});