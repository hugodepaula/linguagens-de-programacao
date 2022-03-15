// Agradeciementos aos aluno  Daniel Schlickma, por conseguir encontrar o pacote correto para ser importado.
// https://replit.com/@DanielSchlickma/LazyJavaScriptNode

var Stream = require('stream.js');

function uns() {
	return new Stream(1 , uns);
}

function numerosNaturais() {
	return new Stream(1, function() {
			return uns().add(numerosNaturais());
		}
	);
}

console.log(uns());
console.log(numerosNaturais());

numerosNaturais().take(5).print(); // imprime 1, 2, 3, 4, 5

//numerosNaturais().print();