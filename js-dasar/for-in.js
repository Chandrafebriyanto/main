// tittle: For In Loop Example object
const person={
    firstName: 'Asep',
    middleName: 'D',
    lastName: 'Suryana'
}

for (const property in person) {
    console.log(`${person[property]}`);
}

// tittle: For In Loop Example array
const nama = ['Asep', 'D', 'Suryana'];
for (const index in nama) {
    console.log(`${nama[index]}`);
}