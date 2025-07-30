// debugger adalah proses mencari bug yang biasanya terjadi di program (khusus dijalankan dengan website secara inspect)
function createFullName(firstName,middleName,lastName){
    debugger; //caranya dengan menambahkan 'debugger' maka program akan ke pause
    const fullName = `${firstName} ${middleName} ${lastName}`
    return fullName
}

const name = createFullName("Muh", "Abdul", "Dudul")
console.log(name);