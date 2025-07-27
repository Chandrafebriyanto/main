// this key adalah sebuah keyword yang mengacu pada objek yang sedang dieksekusi pada saat method tersebut dipanggil

const person = {
    name: "Chandra",
    sayhello: function(value) {
        console.log(`hello ${value}, my name is ${this.name}`);
    }
}

person.sayhello("Budi");
person.sayhello.call({ name: "Siti" }, "Andi"); // menggunakan call untuk mengubah konteks this
