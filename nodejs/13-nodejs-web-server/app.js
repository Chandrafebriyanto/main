// const morgan = require('morgan');
const express = require("express");
const expressLayouts = require("express-ejs-layouts");
const {
  loadcontact,
  findContact,
  addContact,
  cekDuplikat,
  deleteContact,
  editContact,
} = require("./utils/contact.js");
const { body, validationResult, check } = require("express-validator");
const session = require("express-session");
const cookieParser = require("cookie-parser");
const flash = require("connect-flash");

const app = express();
const port = 3000;

// note: gunakan ejs
app.set("view engine", "ejs");
app.use(expressLayouts); // gunakan express-ejs-layouts
app.use(express.static("public")); // gunakan folder public untuk static files
app.use(express.urlencoded({})); // untuk parsing data dari form

// note:konfigurasi flash
app.use(cookieParser("secret"));
app.use(
  session({
    cookie: { maxAge: 6000 },
    secret: "secret",
    resave: true,
    saveUninitialized: true,
  })
);
app.use(flash());

// tittle: halaman home
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
    //note: membuat file index.ejs
    layout: "layouts/main-layout",
    nama: "John Doe",
    mahasiswa,
    title: "Home Page",
  });
});

// tittle: halaman about
app.get("/about", (req, res) => {
  res.render("tentang", {
    //note: membuat file tentang.ejs
    title: "About Page",
    layout: "layouts/main-layout",
  });
});

// tittle: delete kontak
app.get("/contacts/delete/:name", (req, res) => {
  const contact = findContact(req.params.name);
  if (!contact) {
    res.status(404);
    res.send("Kontak tidak ditemukan");
  } else {
    // note: hapus kontak
    deleteContact(req.params.name);
    // note: menampilkan pesan flash
    req.flash("msg", "Data kontak berhasil dihapus");
    res.redirect("/contacts");
  }
});

// tittle: edit kontak
app.get("/contacts/edit/:name", (req, res) => {
  const contact = findContact(req.params.name);
  res.render("edit", {
    //note: membuat file edit.ejs
    title: "Form Edit Contact",
    layout: "layouts/main-layout",
    contact,
  });
});

// tittle: edit kontak
app.post("/contact/update", (req, res) => {
  editContact(req.body);
  // note: menampilkan pesan flash
  req.flash("msg", "Data kontak berhasil diubah");
  res.redirect("/contacts");
});

// tittle: halaman detail kontak
app.get("/contacts/:name", (req, res) => {
  const contact = findContact(req.params.name);
  res.render("detail", {
    //note: membuat file detail.ejs
    title: "detail Contact Page",
    layout: "layouts/main-layout",
    contact,
  });
});

// tittle: halaman kontak
app.get("/contacts", (req, res) => {
  const contacts = loadcontact();
  res.render("kontak", {
    //note: membuat file kontak.ejs
    title: "Contact Page",
    layout: "layouts/main-layout",
    contacts,
    msg: req.flash("msg"), // note: menampilkan pesan flash
  });
});

// tittle: halaman tambah kontak
app.get("/contact/add", (req, res) => {
  res.render("tambah", {
    //note: membuat file tambah.ejs
    title: "Form Tambah Contact",
    layout: "layouts/main-layout",
    errors: [],
  });
});

app.post(
  "/contact/add",
  [
    body("name").custom((value) => {
      const duplikat = cekDuplikat(value);
      if (duplikat) {
        throw new Error("Nama kontak sudah terdaftar");
      }
      return true;
    }),
    check("email", "Email tidak valid").isEmail(),
    check("nomer", "Nomor telepon tidak valid").isMobilePhone("id-ID"),
  ],
  (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      res.render("tambah", {
        title: "Form Tambah Contact",
        layout: "layouts/main-layout",
        errors: errors.array(),
      });
    } else {
      addContact(req.body);
      // note: menampilkan pesan flash
      req.flash("msg", "Data kontak berhasil ditambahkan");
      res.redirect("/contacts");
    }
  }
);

app.get("/products/:id", (req, res) => {
  res.send(`Produk dengan ID: ${req.params.id}`);
});

// tittle: halaman 404
app.use((req, res, next) => {
  res.status(404).send("404 Halaman tidak ditemukan");
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
