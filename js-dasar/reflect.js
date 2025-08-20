const person = {}

Reflect.set(person, 'firstName', 'Budi');
Reflect.set(person, 'lastName', 'Gunawan');
console.info(person)

console.info(Reflect.get(person, 'firstName'));
console.info(Reflect.get(person, 'lastName'));

console.info(Reflect.has(person, 'firstName'));
console.info(Reflect.has(person, 'middleName'));
console.info(Reflect.has(person, 'lastName'));