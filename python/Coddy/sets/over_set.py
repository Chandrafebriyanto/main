# EXERCISE
def iterate_and_filter_set(input_set):
    sorted_sets = list(input_set)
    sets = []
    for i in sorted_sets:
        if i <= 10:
            sets.append(i)
    return set(sets)


print(iterate_and_filter_set({5, 12, 7, 15, 3, 10}))

