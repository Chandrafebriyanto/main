let username;
let prompt1;

// input user
document.getElementById("mySubmit").onclick = function(){
    username = document.getElementById("myText").value;
    console.log(username)
    document.getElementById("header").textContent = `hello ${username}`
}

// windows prompt
document.getElementById("prompt").onclick = function(){
    prompt1= window.prompt(`hello, what's your name? `);
    console.log(`hello ${prompt1}`)
}

//Penjelasan
/*
 fungsi dari document.getElementById adalah memanggil index elemen yang berada di dalam html sesuai dengan ID dari index tersebut
 kemudian untuk onclick digunakan sebagai perintah untuk menjalankan function
*/
