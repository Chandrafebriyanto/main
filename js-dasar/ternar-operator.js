const nilai = 80;

//note: not ternary operation
if (nilai >= 75){
    console.log("Selamat anda lulus")
} else {
    console.log("Silakan coba lagi")
}

//note: with ternary operation
const ucapan = nilai >= 75 ? "Selamat anda lulus" : "Silakan coba lagi"

console.log(ucapan)