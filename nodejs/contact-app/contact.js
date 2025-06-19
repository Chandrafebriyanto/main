// tittle: core module
const fs = require("fs");
const readline = require("readline");
var validator = require('validator');

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

  // tittle: cek duplikat
  const duplikat = contacts.find((contact) => contact.nama === nama);
  if (duplikat) {
    console.log("nama sudah terdaftar, silahkan gunakan nama lain");
    rl.close();
    return false;
  }

  // tittle: cek email
  const emailExists = contacts.find((contact) => contact.email === email);
  if (email && !validator.isEmail(email)) {
    console.log("email tidak valid");
    rl.close();
    return false;
  } else {
    if (emailExists) {
      console.log("email sudah terdaftar, silahkan gunakan email lain");
      rl.close();
      return false;
    }
  }


  contacts.push(contact);
  fs.writeFileSync("data/contact.json", JSON.stringify(contacts));
  console.log("terima kasih udah menambahkan data");
  rl.close()
};

module.exports = {tulisPertanyaan, simpanContact} 