// example 1
const input = "12345"
const number = Number(input)

console.log(number)
console.log(typeof number)
console.log(typeof input)

//example 2
console.log(Number("salah"))

//example 3
console.log(Number.isInteger(number)) //mengecek apakah data ber-type data integer
console.log(Number.isNaN(number)) //mengecek apakah data berisi NaN (Not a Number)
console.log(Number.isFinite(number)) //memeriksa apakah suatu nilai adalah angka yang terbatas (finite)

// example 4
console.log(number.toString(2)) //mengubah data menjadi format binary
console.log(number.toLocaleString("id-ID")) //mengubah data menjadi format penulisan indonesia