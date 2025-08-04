words = ["apple", "banana", "cherry"]
uppercase = [word.upper() for word in words]
print(uppercase)
# Output: ['APPLE', 'BANANA', 'CHERRY']

def get_word_lengths(words):
    lengths = [len(word) for word in words]
    return lengths
print(get_word_lengths(["apple", "banana", "cherry"]))
# output: [5, 6, 6]