const map = new Map();
map.set("Name", "Candra Febriyanto")
map.set("Address", "Indonesia")

console.log(map)
console.log(map.get("Address"));
console.log(map.get("Name"));
console.log(map.get("Hobby"));

map.forEach(
    (value, key) => console.log(`${key}: ${value}`)
)