// tittle: require module
const express = require("express");
const expressLayouts = require("express-ejs-layouts");
require("./utils/db");
const { body, validationResult, check } = require("express-validator");
const methodOverride = require("method-override");
const Contact = require("./model/contact");
const session = require("express-session");
const cookieParser = require("cookie-parser");
const flash = require("connect-flash");

const app = express();
const port = 3000;

// set up method override
app.use(methodOverride("_method"));

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

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

// tittle: setting view engine
app.set("view engine", "ejs");
app.use(expressLayouts); // gunakan express-ejs-layouts
app.use(express.static("public")); // gunakan folder public untuk static files
app.use(express.urlencoded({})); // untuk parsing data dari form

// tittle: default raoute
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

// tittle: halaman kontak
app.get("/contacts", async (req, res) => {
  const contacts = await Contact.find(); // mengambil data dari database

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

// tittle: proses tambah kontak
app.post(
  "/contact/add",
  [
    body("name").custom(async (value) => {
      const duplikat = await Contact.findOne({
        name: value,
      });
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
      (async () => {
        await Contact.insertMany(req.body);

        req.flash("msg", "Data kontak berhasil ditambahkan");
        res.redirect("/contacts");
      })();
    }
  }
);

// tittle: delete kontak
app.delete("/contacts", (req, res) => {
  Contact.deleteOne({ name: req.body.name }).then((result) => {
    req.flash("msg", "Data kontak berhasil dihapus");
    res.redirect("/contacts");
  });
});

// tittle: edit kontak
app.get("/contacts/edit/:name", async (req, res) => {
  const contact = await Contact.findOne({
    name: req.params.name,
  });
  res.render("edit", {
    //note: membuat file edit.ejs
    title: "Form Edit Contact",
    layout: "layouts/main-layout",
    contact,
  });
});

// tittle: update kontak
app.put(
  "/contact",
  [
    body("name").custom(async (value, { req }) => {
      const duplikat = await Contact.findOne({
        name: value,
      });
      if (duplikat && value !== req.body.oldName) {
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
      res.render("edit", {
        title: "Form edit Contact",
        layout: "layouts/main-layout",
        errors: errors.array(),
        contact: req.body,
      });
    } else {
      (async () => {
        await Contact.updateOne(
          { _id: req.body._id },
          {
            $set: {
              name: req.body.name,
              email: req.body.email,
              nomer: req.body.nomer,
            },
          }
        );
      })();
      // note: menampilkan pesan flash
      req.flash("msg", "Data kontak berhasil diubah");
      res.redirect("/contacts");
    }
  }
);

// tittle: halaman detail kontak
app.get("/contacts/:name", async (req, res) => {
  const contact = await Contact.findOne({
    name: req.params.name,
  });

  res.render("detail", {
    //note: membuat file detail.ejs
    title: "detail Contact Page",
    layout: "layouts/main-layout",
    contact,
  });
});
