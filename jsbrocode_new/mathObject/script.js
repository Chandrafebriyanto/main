// Math = built-in object that provides a
//              collection of properties and methods

let x = -45;
let y = 2;
let z = 1;

console.log(Math.PI, "nilai Pi"); //menghasilkan nilai Pi
console.log(Math.E, "nilai euler number"); //menghasilkan nilai euler number

z = Math.round(x); //membulatkan nilai
z = Math.floor(x); //membulatkan kebawah
z = Math.ceil(x); //membulatkan keatas
z = Math.trunc(x); //menghilangkan bilangan desimal
z = Math.pow(x, y); //pangkat bilangan (x^y)
z = Math.sqrt(x); //akar kuadrat
z = Math.log(x); //log
z = Math.sin(x); //sin
z = Math.cos(x); //cos
z = Math.tan(x); //tan
z = Math.abs(x); //menghasilkan bilangan positif
z = Math.sign(x); //mengembalikan suatu angka (positif = 1, negatif = -1)
let max = Math.max(x, y, z); //menentukan nilai maximum dari variabel
let min = Math.min(x, y, z); //menentukan nilai minimum dari variabel

console.log(z);
console.log(max, "nilai maximum");
console.log(min, "nilai minumum");