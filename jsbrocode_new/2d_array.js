const matrix = [[1, 2, 3], 
                [4, 5, 6],
                [7, 8, 9]]

matrix[0][0] = 'X'
matrix[1][0] = 'O'
matrix[0][1] = 'X'
matrix[0][2] = 'O'


for(let row of matrix){
    const rowstring = row.join(' ');
    console.log(rowstring)
    // console.log(row)
}