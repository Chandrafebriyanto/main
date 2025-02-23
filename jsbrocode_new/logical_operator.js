/* tittle: logical operator = digunakan untuk mengecek kondisi (TRUE / FALSE)
AND = &&
OR = ||
NOT = !
*/

//example AND
const  temp = 20;

if (temp > 0 && temp <=30){
    console.log("The weather is Good");
}
else{
    console.log("The weather is Bad");
}

// example OR
const nilai = 74;
const  kehadiran = 75;

if (nilai >= 75 || kehadiran > 80){
    console.log("kamu lulus")
}
else{
    console.log("kamu tidak lulus")
}

//example NOT
let boleean = false;
console.log(!boleean);