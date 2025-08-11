{
    const person = {
        firstName: 'John',
        lastName: 'Doe'
    }

    Object.freeze(person) //untuk mengunci object tidak bisa di ganti/dihapus
    Object.seal(person) //untuk mengunci object tidak bisa di hapus, tpi bisa di ganti valuenya

    person.firstName = 'Budi';
    delete person.lastName;

    console.log(person)
}

{
//     object Assign
    const target = {
        firstName: "Rich"
    }

    const source = {
        lastName: "Brian"
    }

    Object.assign(target, source)
    console.log(target)
    console.log(source)
}

{
    // Object property & value
    const person = {
        firstName: 'Rich',
        lastName: 'Brian'
    }

    console.log(Object.values(person))
    console.log(Object.getOwnPropertyNames(person))
}

