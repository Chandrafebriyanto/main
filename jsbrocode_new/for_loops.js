// for == loop statements

//example 1
for(let i = 1; i <= 10; i++){
    console.log(i)
}

//example 2
for (let i = 10; i >= 1; i--){
    console.log(i)
}
console.log("HAPPY NEW YEAR")

let i = 1
//example 3
for (i; i <= 20; i++){
    if(i === 13){
        continue;
    }
    else{
        console.log(i)
    }
}

function faktorial(n, r){
    let hasil_n = 1;
    for(let j = 1; j <= n; j++){
        hasil_n *= j;
    }

    let hasil_r = 1;
    for(let j = 1; j <= n-r; j++){
        hasil_r *= j;
    }

    return hasil_n / hasil_r;
}

console.log(faktorial(5, 3));