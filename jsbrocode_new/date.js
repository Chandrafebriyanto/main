//EXAMPLE 1
// Create a date object for the current date and time
const date = new Date(); // year, month (0-11), day, hour, minute, second, millisecond

console.log(date);
console.log("")


// EXAMPLE 2
// Create a date object for a specific date and time
const year = date.getFullYear(); // 2023
const month = date.getMonth(); // 0-11
const day = date.getDate(); // 1-31
const hour = date.getHours(); // 0-23
const minute = date.getMinutes(); // 0-59
const second = date.getSeconds(); // 0-59

console.log(year);
console.log(month);
console.log(day);
console.log(hour +" : "+ minute +" : "+ second);
console.log("")


//EXAMPLE 3
//SET METHODS
date.setFullYear(2024); // set year to 2024
date.setMonth(11); // set month to December (11)
date.setDate(25); // set day to 25
date.setHours(18); // set hour to 10 AM
date.setMinutes(30); // set minute to 30
date.setSeconds(0); // set second to 0

console.log(date); // 2024-12-25T10:30:00.000Z
console.log("")


//EXAMPLE 4
//COMPARE DATES
const date1 = new Date('2023-12-31');
const date2 = new Date('2024-01-01');
if (date1 < date2) {
    console.log(`HAPPY NEW YEAR!`);
}

