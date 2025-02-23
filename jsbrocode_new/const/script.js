// const = a variable that can't be changed

const Pi = 3.14159;
let radius;
let circumference;

// Pi = 420.69;

document.getElementById("mySubmit").onclick = function(){
    radius = document.getElementById("myText").value;
    radius = Number(radius);
    circumference = 2 * Pi * radius;
    document.getElementById("hasil").textContent = `Hasil dari Luas Lingkaran adalah : ${circumference}`;
}

//Penjelasan
/*
const adalah variabel yang tidak dapat dirubah/ nama variabel tidak boleh sama
ketika ada varibael const yang sama maka program tidak akan bisa berjalan
*/