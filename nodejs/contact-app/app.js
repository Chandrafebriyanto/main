const yargs = require("yargs");
const { simpanContact, listcontact, detailContact, removeContact } = require("./contact.js");

yargs
  .command({
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
    },
  })
  .demandCommand();

// tittle: menampilkan daftar kontak
yargs.command({
  command: "list",
  describe: "Menampilkan daftar kontak",
  handler() {
    listcontact();
  },
});

// tittle: menmapilkan detail kontak
yargs.command({
  command: "detail",
  describe: "Menampilkan detail kontak",
  builder: {
    nama: {
      describe: "Nama lengkap",
      demandOption: true,
      type: "string",
    },
  },
  handler(argv) {
    detailContact(argv.nama);
  },
});

// tittle: menghapus kontak
yargs.command({
  command: "remove",
  describe: "Menghapus kontak",
  builder: {
    nama: {
      describe: "Nama lengkap",
      demandOption: true,
      type: "string",
    },
  },
  handler(argv) {
    removeContact(argv.nama);
  },
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
