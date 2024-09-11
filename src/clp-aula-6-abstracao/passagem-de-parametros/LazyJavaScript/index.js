

function uns() {
	return new require('stream').Stream(1 , uns);
}

function numerosNaturais() {
	return new Stream(1, function() {
			return uns().add(numerosNaturais());
		}
	);
}
numerosNaturais().take(5).print(); // imprime 1, 2, 3, 4, 5
