const minNum = 50;
const maxNum = 100;
const  answer = Math.floor(Math.random() * (maxNum - minNum) + minNum);

let attempt = 0;
let guess;
let running = true;

while (running){

    guess = window.prompt(`guess a number between ${minNum} - ${maxNum}`);
    guess = Number(guess); //so that the data type becomes int

    if (isNaN(guess)){
        window.alert(`please enter a valid number `);
    }
    else if (guess < minNum || guess > maxNum){
        window.alert(`please enter a valid number `);
    }
    else{
        attempt++;
        if (guess < answer){
            window.alert(`TOO LOW! TRY AGAIN`);
        }
        else if (guess > answer){
            window.alert(`TOO HIGH! TRY AGAIN`);
        }
        else{
            window.alert(`CORRECT! the answer is ${answer}`);
            running=false;
        }
    }

}