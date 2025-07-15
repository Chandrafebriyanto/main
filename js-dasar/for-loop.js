// sebelum disederhanakan
let counter = 1;
for(; counter <= 10;){
    console.log(`counter ke- ${counter}`)
    counter++
}

// setelah disederhanakan
for(let counter = 1; counter <= 10; counter++){
    console.log(`counter ke- ${counter}`)
}