// tittle: core module
const fs = require("fs");
const readline = require("readline");
var validator = require("validator");

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

const loadcontact = () => {
  const filleBuffer = fs.readFileSync("data/contact.json", "Utf-8");
  const contacts = JSON.parse(filleBuffer);
  return contacts;
};

// tittle: simpan contact
const simpanContact = (nama, email, nomer) => {
  const contact = { nama, email, nomer };
  // const filleBuffer = fs.readFileSync("data/contact.json", "Utf-8");
  // const contacts = JSON.parse(filleBuffer);
  const contacts = loadcontact();

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

  // tittle: cek nomer
  const nomerExists = contacts.find((contact) => contact.nomer === nomer);
  if (!validator.isMobilePhone(nomer, "id-ID")) {
    console.log("nomer tidak valid");
    rl.close();
    return false;
  } else {
    if (nomerExists) {
      console.log("nomer sudah terdaftar, silahkan gunakan nomer lain");
      rl.close();
      return false;
    }
  }

  contacts.push(contact);
  fs.writeFileSync("data/contact.json", JSON.stringify(contacts));
  console.log("terima kasih udah menambahkan data");
  rl.close();
};

// tittle: menampilkan daftar kontak
const listcontact = () => {
  const contacts = loadcontact();
  console.log("Daftar Kontak:");
  contacts.forEach((contacts, i) => {
    console.log(`${i + 1}. ${contacts.nama} -  ${contacts.nomer}`);
  });
  rl.close();
};

// tittle: menampilkan detail kontak
const detailContact = (nama) => {
  const contacts = loadcontact();
  const contact = contacts.find(
    (c) => c.nama.toLowerCase() === nama.toLowerCase()
  );
  if (!contact) {
    console.log(`Kontak dengan nama ${nama} tidak ditemukan.`);
    rl.close();
    return;
  }
  console.log(`Nama: ${contact.nama}`);
  console.log(`Nomer: ${contact.nomer}`);
  if (contact.email) {
    console.log(`Email: ${contact.email}`);
  }
  rl.close();
};

// tittle: menghapus kontak
const removeContact = (nama) => {
  const contacts = loadcontact(); //(./data/contact.json)
  const newContacts = contacts.filter(
    (contact) => contact.nama.toLowerCase() !== nama.toLowerCase()
  );
  if (contacts.length === newContacts.length) {
    console.log(`Kontak dengan nama ${nama} tidak ditemukan.`);
    rl.close();
    return;
  }
  fs.writeFileSync("data/contact.json", JSON.stringify(newContacts));
  console.log(`Kontak dengan nama ${nama} telah dihapus.`);
  rl.close();
};

module.exports = {
  tulisPertanyaan,
  simpanContact,
  detailContact,
  listcontact,
  removeContact,
};
