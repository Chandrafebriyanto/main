// const morgan = require('morgan');
const express = require("express");
const expressLayouts = require("express-ejs-layouts");
const { loadcontact, findContact } = require("./utils/contact.js");

const app = express();
const port = 3000;

// note: gunakan ejs
app.set("view engine", "ejs");
app.use(expressLayouts); // gunakan express-ejs-layouts
app.use(express.static("public")); // gunakan folder public untuk static files

app.get("/", (req, res) => {
  const mahasiswa = [
    {
      nama: "Candra",
      email: "candra@gmail.com",
    },
    {
      nama: "John",
      email: "John@gmail.com",
    },
    {
      nama: "Andre",
      email: "andre@gmail.com",
    },
  ];
  res.render("index", {
    layout: "layouts/main-layout",
    nama: "John Doe",
    mahasiswa,
    title: "Home Page",
  });
});

app.get("/about", (req, res) => {
  res.render("tentang", {
    title: "About Page",
    layout: "layouts/main-layout",
  });
});

app.get("/contacts", (req, res) => {
  const contacts = loadcontact();
  res.render("kontak", {
    title: "Contact Page",
    layout: "layouts/main-layout",
    contacts,
  });
});

app.get("/contact/:name/detail", (req, res) => {
  const contact = findContact(req.params.name);
  res.render("detail", {
    title: "detail Contact Page",
    layout: "layouts/main-layout",
    contact,
  });
});

app.get("/products/:id", (req, res) => {
  res.send(`Produk dengan ID: ${req.params.id}`);
});

app.use((req, res, next) => {
  res.status(404).send("404 Halaman tidak ditemukan");
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
