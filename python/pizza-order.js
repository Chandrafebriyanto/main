// Program pemesanan pizza dalam JavaScript menggunakan Node.js
const readline = require('readline');
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log(`
SELAMAT DATANG DI KEDAI PIZZA, SILAKAN PILIH MENU DISINI
=========================MENU===========================
|  SIZE  |    TOPPING    | CRUST                       |
|--------|---------------|-----------------------------|
| KECIL  | PAPPERONI     | PAN CRUST                   |
| SEDANG | JAMUR         | CHEESY BITE CRUST           |
| BESAR  | SOSIS         | CHILLI CHEESY STUFFED CRUST |
|        | JAGUNG MANIS  | STUFFED CRUST               |
|        | KEJU MOZARELLA| CROWN CRUST CARNIVAL        |
|        | PAPRIKA       |                             |
|        | BAWANG MERAH  |                             |
========================================================
`);

let konfirmasi = true;

const askQuestion = (query) => {
  return new Promise((resolve) => rl.question(query, resolve));
};

(async () => {
  while (konfirmasi) {
    let ukuran = (await askQuestion("Pilih ukuran pizza yang kamu inginkan: ")).toLowerCase();
    let tambahTopping = (await askQuestion("Pilih topping yang kamu mau: ")).toLowerCase();
    let crust = (await askQuestion("Pilih crust: ")).toLowerCase();
    let tambahKeju = (await askQuestion("Apakah ingin menambah keju: (y/t) ")).toLowerCase();
    let jumlah = parseInt(await askQuestion("Jumlah pizza yang ingin dipesan: "), 10);

    // Total bill awal
    let bill = 0;

    // Pilihan ukuran pizza
    if (ukuran === "kecil") {
      bill += 15000;
    } else if (ukuran === "sedang") {
      bill += 20000;
    } else if (ukuran === "besar") {
      bill += 25000;
    } else {
      console.log("Ukuran tidak valid.");
      continue;
    }

    // Pilihan topping
    if (["papperoni", "jamur", "keju mozarella"].includes(tambahTopping)) {
      bill += 3000;
    } else if (["sosis", "jagung manis", "paprika", "bawang merah"].includes(tambahTopping)) {
      bill += 4000;
    } else {
      console.log("Topping tidak valid.");
      continue;
    }

    // Pilihan crust
    if (["pan crust", "cheesy bite crust", "chilli chessy stuffed crust", "stuffed crust", "crown crust carnival"].includes(crust)) {
      bill += 2000;
    } else {
      console.log("Crust tidak valid.");
      continue;
    }

    // Tambah keju
    if (tambahKeju === "y") {
      bill += 2000;
    }

    // Konfirmasi pesanan
    console.log("\n========================================================");
    console.log("                     ULANGI PESANAN                      ");
    console.log("Ukuran Pizza:", ukuran);
    console.log("Pilihan crust:", crust);
    console.log("Pilihan topping:", tambahTopping);
    console.log("Ekstra keju:", tambahKeju);
    console.log(`Jumlah pemesanan: ${jumlah} buah`);
    console.log("========================================================\n");

    let ipt = (await askQuestion("Konfirmasi pesanan anda (y/t): ")).toLowerCase();
    if (ipt === 'y') {
      konfirmasi = false;
      console.log("\n=========================================================");
      console.log(`=Total Pesanan Anda: Rp ${bill * jumlah}                          =`);
      console.log("====TERIMA KASIH SUDAH MEMESAN, SILAKAN DATANG LAGI:)====");
      console.log("=========================================================");
    }
  }
  rl.close();
})();
