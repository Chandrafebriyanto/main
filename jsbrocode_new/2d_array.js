const matrix = [[1, 2, 3], 
                [4, 5, 6],
                [7, 8, 9]]

for(let row of matrix){
    const rowstring = row.join(' ');
    console.log(rowstring)
    // console.log(row)
}