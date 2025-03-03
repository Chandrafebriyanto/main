//tittle: variable scope
//note: mengambil variabel dari luar fungsi

let globalVar = "I am global variable";

function myFunction() {
    let localVar = "I am local variable";
    console.log(globalVar); // I am global
    console.log(localVar); // I am local
}

myFunction();