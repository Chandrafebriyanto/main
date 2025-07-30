# subset adalah himpunan bagian dari himpunan lain yang lebih besar. Secara sederhana, subset adalah kumpulan elemen yang diambil dari himpunan yang lebih besar.

# Subset (lebih kecil sama dengan)
set1 = {1, 2}
set2 = {1, 2, 3}
is_subset = set1 <= set2
print(is_subset)
# Output: True

# proper subset (lebih kecil)
set1 = {1, 2}
set2 = {1, 2, 3}
is_proper_subset = set1 < set2
print(is_proper_subset)
# Output: True

# superset (lebih besar sama dengan)
set1 = {1, 2, 3}
set2 = {1, 2}
is_superset = set1 >= set2
print(is_superset)
# Output: True

# proper superset (lebih besar)
set1 = {1, 2, 3}
set2 = {1, 2}
is_proper_superset = set1 > set2
print(is_proper_superset)
# Output: True

# EXERCISE
def check_sets(set1, set2):
    # Check if set1 is a subset of set2
    is_subset = set1 <= set2

    # Check if set2 is a superset of set1
    is_superset =  set2 >= set1

    # Check if set1 is a proper subset of set2
    is_proper_subset = set1 < set2

    # Check if set2 is a proper superset of set1
    is_proper_superset = set2 > set1

    # Return a dictionary containing the results
    return {
        "is_subset": is_subset,
        "is_superset": is_superset,
        "is_proper_subset": is_proper_subset,
        "is_proper_superset": is_proper_superset
    }

print(check_sets({1, 2}, {1, 2, 3, 4}))