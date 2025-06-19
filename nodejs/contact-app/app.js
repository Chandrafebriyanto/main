const yargs = require("yargs");
const { simpanContact } = require("./contact.js");

yargs.command({
  command: "add",
  describe: "Menambahkan contact baru",
  builder: {
    nama: {
      describe: "Nama lengkap",
      demandOption: true, // Harus diisi
      type: "string",
    },
    email: {
      describe: "Email",
      demandOption: false, // Tidak wajib diisi
      type: "string",
    },
    nomer: {
      describe: "Nomer telepon",
      demandOption: true,
      type: "string",
    },
  },

  handler(argv) {
    simpanContact(argv.nama, argv.email, argv.nomer);
  }
});

yargs.parse();




























// const {tulisPertanyaan, simpanContact} = require("./contact.js");

// const main = async () => {
//   const nama = await tulisPertanyaan("Masukkan nama anda: ");
//   const email = await tulisPertanyaan("Masukkan email anda: ");
//   const nomer = await tulisPertanyaan("Masukkan nomer anda: ");

//   simpanContact(nama, email, nomer);
// };

// main();
