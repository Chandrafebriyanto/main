// for == loop statemnet

//example 1
for(let i = 1; i <= 10; i++){
    console.log(i)
}

//example 2
for (let i = 10; i >= 1; i--){
    console.log(i)
}
console.log("HAPPY NEW YEAR")

//example 3
for (let i = 1; i <= 20; i++){
    if(i === 13){
        continue;
    }
    else{
        console.log(i)
    }
}