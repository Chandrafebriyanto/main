import numpy as np

array1D = np.array(['A', 'B', "C"])

array2D = np.array([['A', 'B', 'C'], 
                    ['D', 'E', 'F'],
                    ['G', 'H', 'I']])

array3D = np.array([[['A', 'B', 'C'], ['D', 'E', 'F'], ['G', 'H', 'I']],
                    [['J', 'K', 'L'], ['M', 'N', 'O'], ['P', 'Q', 'R']],
                    [['S', 'T', 'U'], ['V', 'W', 'X'], ['Y', 'Z', ' ']]])
# depth, row, column

print("1D Array:", array1D)
print("2D Array:\n", array2D)
print("3D Array:\n", array3D)

# tittle: SHAPE
print("Shape of 1D Array:", array1D.shape)
print("Shape of 2D Array:", array2D.shape)
print("Shape of 3D Array:", array3D.shape)

# tittle: NDIMENSIONS
print("\nNumber of dimensions in 1D Array:", array1D.ndim)
print("Number of dimensions in 2D Array:", array2D.ndim)
print("Number of dimensions in 3D Array:", array3D.ndim)

# tittle: INDEXING
print("indexing 1D Array:", array1D[0])  # Accessing first element
print("indexing 2D Array:", array2D[1, 2])  # Accessing element at row 1, column 2
print("indexing 3D Array:", array3D[1, 2, 1])  # Accessing element at depth 2, row 1, column 0

word = array3D[0,0,2] + array3D[0,0,0] + array3D[1,1,1] + array3D[0,1,0] + array3D[1,2,2] + array3D[0,0,0] #output:CANDRA
print(word)

