// tittle: core module
// const { rejects } = require("assert");
// const { isUtf8 } = require("buffer");
// const { resolve } = require("path");
const fs = require("fs");
const readline = require("readline");

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

// tittle: membuat directory jika belum ada directory
const dirpath = "./data";
if (!fs.existsSync(dirpath)) {
  fs.mkdirSync(dirpath);
}

// tittle: membuat file jika belum ada file
const datapath = "./data/contact.json";
if (!fs.existsSync(datapath)) {
  fs.writeFileSync(datapath, "[]", "utf-8");
}

// tittle: membuat pertanyaan
const tulisPertanyaan = (pertanyaan) => {
  return new Promise((resolve, reject) => {
    rl.question(pertanyaan, (tanya) => {
      resolve(tanya);
    });
  });
};

// tittle: simpan contact
const simpanContact = (nama, email, nomer) => {
  const contact = { nama, email, nomer };
  const filleBuffer = fs.readFileSync("data/contact.json", "Utf-8");
  const contacts = JSON.parse(filleBuffer);

  contacts.push(contact);
  fs.writeFileSync("data/contact.json", JSON.stringify(contacts));
  console.log("terima kasih udah menambahkan data");
  rl.close()
};

module.exports = {tulisPertanyaan, simpanContact} 