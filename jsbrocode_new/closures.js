//closures adalah fungsi yang dapat mengakses variabel di luar scope-nya, meskipun fungsi tersebut sudah dieksekusi di luar scope-nya.
// closures juga dapat digunakan untuk menyimpan data di dalam fungsi, sehingga data tersebut tidak dapat diakses dari luar fungsi tersebut.

//tittle: EXAMPLE 1
function outerFunction() {
    let outerVariable = "I am an outer variable";

    function innerFunction() {
        console.log(outerVariable); // Accessing outerVariable from innerFunction
    }

    return innerFunction; // Returning innerFunction
}

outerFunction()(); // Output: I am an outer variable
console.log("")



//tittle: EXAMPLE 2
function createCounter(){
    let count = 0;

    function increment(){
        count++;
        console.log(`count increased to ${count}`);
    }

    function getcount(){
        return count;
    }

    return {increment, getcount}; // Returning the inner function
}

const counter = createCounter(); // Creating a counter instance
counter.increment(); // Output: count increased to 1
counter.increment(); // Output: count increased to 2
counter.increment(); // Output: count increased to 3
counter.increment(); // Output: count increased to 4
console.log(`Current count: ${counter.getcount()}`); // Output: Current count: 3
console.log("")



//tittle: EXAMPLE 3
function createGame(){
    let score = 0;

    function pointambah(poin){
        score += poin;
        console.log(`+${poin}`);
    }

    function poinkurang(poin){
        score -= poin;
        console.log(`-${poin}`);
    }

    function getscore(){
        return score;
    }

    return {pointambah, poinkurang, getscore}; // Returning the inner function
}

const game = createGame(); // Creating a game instance
game.pointambah(10); // Output: score increased to 10
game.pointambah(20); // Output: score increased to 30
game.poinkurang(5); // Output: score decreased to 25
console.log(`Current score: ${game.getscore()}`); // Output: Current score: 25

