// tittle: penulisan modul
// const { profile } = require("console");
const fs = require("fs");

// // tittle: menuliskan string kedalam file (sychronous)
// try{
//     fs.writeFileSync('data/text.txt', 'Hello World secara synchronous')
// } catch (e){
//     console.log(e)
// }

// // tittle: menulis string kedalam file (asynchronous)
// fs.writeFile('data/text2.txt', 'Hello World secara asynchronous', (e) => {
//     console.log(e)
// })

// tittle: membaca isi file (sychronous)
// const data = fs.readFileSync('data/text.txt', 'utf-8')
// console.log(data)

// tittle: membaca isi file (Asychronous)
// fs.readFile('data/text2.txt', 'utf-8', (e, data) => {
//     if(e) throw e
//     console.log(data)
// })

//tittle:Readline
const readline = require("readline");
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

rl.question("masukan nama anda? ", (nama) => {
  //membuat inputan nama
  rl.question("masukan umur anda? ", (umur) => {
    //membuat inputan umur
    const profile = { nama, umur }; //data yang telah di input masuk di profile
    const data = JSON.parse(fs.readFileSync("data/datadiri.json", "utf-8")); //membaca isi file datadiri.json (jika belum ada maka error)
    data.push(profile); //menambahkan data kedalam file datadiri.js
    fs.writeFileSync("data/datadiri.json", JSON.stringify(data)); //menulis data yang telah di input sesuai dengan ketentuan JSON
    console.log(`thank you input your data`);

    rl.close();
  });
});
