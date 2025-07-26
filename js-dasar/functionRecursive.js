// Recursive Fuction adalah fungsi yang memanggil dirinya sendiri

// faktorial tanpa recursive
function faktorial(n) {
    let result = 1;
    for (let i = 2; i <= n; i++) {
        result *= i
    }
    return result;
}   
console.log(faktorial(5));

// faktorial dengan recursive
function faktorialRecursive(n){
    if (n === 1){
        return 1;
    } else {
        return n * faktorialRecursive(n - 1);
    }
}
console.log(faktorialRecursive(5));

// cara kerja:
// faktorialRecursive(5)
// 5 * faktorialRecursive(4)
// 5 * 4 * faktorialRecursive(3)
// 5 * 4 * 3 * faktorialRecursive(2)
// 5 * 4 * 3 * 2 * faktorialRecursive(1)
// 5 * 4 * 3 * 2 * 1 = 120