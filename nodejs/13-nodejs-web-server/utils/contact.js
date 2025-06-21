const fs = require("fs");
const readline = require("readline");
// var validator = require("validator");

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

const loadcontact = () => {
  const filleBuffer = fs.readFileSync("data/contact.json", "Utf-8");
  const contacts = JSON.parse(filleBuffer);
  return contacts;
};

const findContact = (name) => {
  const contacts = loadcontact();
  const contact = contacts.find((contact) => contact.name === name);
  return contact;
};

module.exports = { loadcontact, findContact };
