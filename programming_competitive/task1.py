# date: 2025 - 02 - 24
# note: A Farmer wants to farm their land with the maximum are where good land is present. the land is represented as a matrix with 1s and 0s, where 1s mean "good land" and 0s "bad land". the farmer wants to farm in a square of good land with th maximum area. please help the farmer to find the maximum area of the land they can farm in good land.



# input:
# 1. a matrix of 1s and 0s, where 1s mean good land and 0s mean bad land
# 2. the size of the matrix

# output:
# 1. the maximum area of the land that the farmer can farm in

def largest_square(bin_array: list[list[int]]) -> int:
    n = len(bin_array)
    m = len(bin_array[0])
    dp = [[0] * m for _ in range(n)]
    max_side = 0
    for i in range(n):
        for j in range(m):
            if bin_array[i][j] == 1:
                if i == 0 or j == 0:
                    dp[i][j] = 1
                else:
                    dp[i][j] = min(dp[i-1][j], dp[i][j-1], dp[i-1][j-1]) + 1
                max_side = max(max_side, dp[i][j])
    return max_side * max_side

# test cases
print(largest_square([[1, 1, 1], [1, 1, 1], [1, 1, 1]])) # 9

def maximalSquare(matrix):
    if not matrix or not matrix[0]:
        return 0
    
    rows, cols = len(matrix), len(matrix[0])
    dp = [[0] * cols for _ in range(rows)]
    max_side = 0
    
    for i in range(rows):
        for j in range(cols):
            if matrix[i][j] == 1:
                if i == 0 or j == 0:
                    dp[i][j] = 1  # Boundary cases
                else:
                    dp[i][j] = min(dp[i-1][j], dp[i][j-1], dp[i-1][j-1]) + 1
                max_side = max(max_side, dp[i][j])
    
    return max_side * max_side  # Returning the area of the largest square

# Example Usage:
land = [
    [1, 0, 1, 0, 0],
    [1, 0, 1, 1, 1],
    [1, 1, 1, 1, 1],
    [1, 0, 0, 1, 0]
]

print("Maximum area of good land:", maximalSquare(land))

