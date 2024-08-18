import numpy as np

# --- Array Creation with Specific Data Types ---

# 1. Integer Array
int_array = np.array([1, 2, 3, 4], dtype=np.int32)
print("Integer Array:", int_array, "Type:", int_array.dtype)

# 2. Float Array
float_array = np.array([1.1, 2.2, 3.3], dtype=np.float64)
print("Float Array:", float_array, "Type:", float_array.dtype)

# 3. Complex Array
complex_array = np.array([1+2j, 3+4j, 5+6j], dtype=np.complex128)
print("Complex Array:", complex_array, "Type:", complex_array.dtype)

# 4. Boolean Array
bool_array = np.array([True, False, True], dtype=np.bool_)
print("Boolean Array:", bool_array, "Type:", bool_array.dtype)

# 5. String Array
string_array = np.array(["a", "b", "c"], dtype=np.str_)
print("String Array:", string_array, "Type:", string_array.dtype)

# 6. Object Array
object_array = np.array([1, "two", 3.0], dtype=np.object_)
print("Object Array:", object_array, "Type:", object_array.dtype)

# 7. Unsigned Integer Array
uint_array = np.array([1, 2, 3], dtype=np.uint8)
print("Unsigned Integer Array:", uint_array, "Type:", uint_array.dtype)


# --- Converting Between Data Types ---

# 8. Convert Integer Array to Float
int_to_float = int_array.astype(np.float64)
print("Converted Integer to Float:", int_to_float, "Type:", int_to_float.dtype)

# 9. Convert Float Array to Integer (truncates the decimals)
float_to_int = float_array.astype(np.int32)
print("Converted Float to Integer:", float_to_int, "Type:", float_to_int.dtype)

# 10. Convert Complex Array to Real (loses imaginary part)
complex_to_real = complex_array.astype(np.float64)
print("Converted Complex to Real:", complex_to_real, "Type:", complex_to_real.dtype)

# 11. Convert Boolean Array to Integer
bool_to_int = bool_array.astype(np.int32)
print("Converted Boolean to Integer:", bool_to_int, "Type:", bool_to_int.dtype)

# 12. Convert String Array to Object
string_to_object = string_array.astype(np.object_)
print("Converted String to Object:", string_to_object, "Type:", string_to_object.dtype)

# 13. Convert Object Array to String
object_to_string = object_array.astype(np.str_)
print("Converted Object to String:", object_to_string, "Type:", object_to_string.dtype)

# 14. Convert Unsigned Integer Array to Signed Integer
uint_to_int = uint_array.astype(np.int8)
print("Converted Unsigned Integer to Signed Integer:", uint_to_int, "Type:", uint_to_int.dtype)


# --- Array Creation ---

# 15. Creating Arrays with Specific Data Types
array_1d = np.array([1, 2, 3, 4, 5])
print("1D Array:", array_1d, "Type:", array_1d.dtype)

array_2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
print("2D Array:\n", array_2d, "Type:", array_2d.dtype)

# 16. Array of Zeros, Ones, and Empty
zeros_array = np.zeros((3, 3), dtype=np.float64)
print("Array of Zeros:\n", zeros_array, "Type:", zeros_array.dtype)

ones_array = np.ones((2, 3), dtype=np.int32)
print("Array of Ones:\n", ones_array, "Type:", ones_array.dtype)

empty_array = np.empty((2, 3), dtype=np.float64)
print("Empty Array (uninitialized):\n", empty_array, "Type:", empty_array.dtype)

# 17. Array with a Range of Values
range_array = np.arange(0, 10, 2, dtype=np.int32)
print("Array with a Range of Values:", range_array, "Type:", range_array.dtype)

# 18. Array with Evenly Spaced Values
linspace_array = np.linspace(0, 1, 5, dtype=np.float64)
print("Array with Evenly Spaced Values:", linspace_array, "Type:", linspace_array.dtype)

# 19. Array with Random Values
random_array = np.random.rand(3, 3).astype(np.float64)
print("Array with Random Values:\n", random_array, "Type:", random_array.dtype)

# 20. Identity Matrix and Diagonal Matrix
identity_matrix = np.eye(3, dtype=np.float64)
print("Identity Matrix:\n", identity_matrix, "Type:", identity_matrix.dtype)

diagonal_matrix = np.diag([1, 2, 3]).astype(np.int32)
print("Diagonal Matrix:\n", diagonal_matrix, "Type:", diagonal_matrix.dtype)

# 21. Random Integers
random_int_array = np.random.randint(0, 100, (3, 3), dtype=np.int32)
print("Random Integer Array:\n", random_int_array, "Type:", random_int_array.dtype)

# 22. Full Array (constant value)
full_array = np.full((2, 3), 7, dtype=np.int32)
print("Array with constant value 7:\n", full_array, "Type:", full_array.dtype)

# 23. Creating an Array with Logarithmically Spaced Values
logspace_array = np.logspace(0, 3, 10, dtype=np.float64)
print("Logarithmically Spaced Array:", logspace_array, "Type:", logspace_array.dtype)


# --- Array Manipulation ---

# 24. Reshaping Arrays
reshaped_array = np.arange(12, dtype=np.int32).reshape((3, 4))
print("Reshaped Array (3x4):\n", reshaped_array, "Type:", reshaped_array.dtype)

# 25. Flattening an Array
flattened_array = reshaped_array.flatten()
print("Flattened Array:", flattened_array, "Type:", flattened_array.dtype)

# 26. Transpose of a Matrix
transposed_array = reshaped_array.T
print("Transpose of Array:\n", transposed_array, "Type:", transposed_array.dtype)

# 27. Resizing an Array (alters original array)
resized_array = np.resize(array_1d, (3, 3)).astype(np.int32)
print("Resized Array:\n", resized_array, "Type:", resized_array.dtype)

# 28. Adding New Axis
new_axis_array = array_1d[:, np.newaxis]
print("Array with New Axis:\n", new_axis_array, "Type:", new_axis_array.dtype)

# 29. Squeeze (removes single-dimensional entries)
squeezed_array = np.squeeze(new_axis_array)
print("Squeezed Array:", squeezed_array, "Type:", squeezed_array.dtype)

# 30. Concatenating Arrays
concat_array = np.concatenate((array_1d, np.array([6, 7, 8], dtype=np.int32)))
print("Concatenated Array:", concat_array, "Type:", concat_array.dtype)

# 31. Stacking Arrays (Vertical and Horizontal)
stacked_vertically = np.vstack((array_1d, array_1d)).astype(np.int32)
print("Vertically Stacked Array:\n", stacked_vertically, "Type:", stacked_vertically.dtype)

stacked_horizontally = np.hstack((array_1d, array_1d)).astype(np.int32)
print("Horizontally Stacked Array:", stacked_horizontally, "Type:", stacked_horizontally.dtype)

# 32. Splitting Arrays
split_array = np.split(array_2d, 3, axis=0)
print("Split Array (3 parts vertically):", split_array, "Types:", [arr.dtype for arr in split_array])

# 33. Tiling and Repeating Arrays
tiled_array = np.tile(array_1d, (2, 2)).astype(np.int32)
print("Tiled Array:\n", tiled_array, "Type:", tiled_array.dtype)

repeated_array = np.repeat(array_1d, 3).astype(np.int32)
print("Repeated Array:", repeated_array, "Type:", repeated_array.dtype)

# 34. Sorting Arrays
sorted_array = np.sort(array_2d, axis=0)
print("Sorted Array (column-wise):\n", sorted_array, "Type:", sorted_array.dtype)

# 35. Flipping Arrays
flipped_lr = np.fliplr(array_2d)
print("Array Flipped Left-Right:\n", flipped_lr, "Type:", flipped_lr.dtype)

flipped_ud = np.flipud(array_2d)
print("Array Flipped Up-Down:\n", flipped_ud, "Type:", flipped_ud.dtype)


# --- Array Operations ---

# 36. Basic Array Operations (element-wise)
added_array = array_1d + 2
print("Added 2 to Array:", added_array, "Type:", added_array.dtype)

multiplied_array = array_1d * 3
print("Multiplied Array by 3:", multiplied_array, "Type:", multiplied_array.dtype)

squared_array = array_1d ** 2
print("Squared Array:", squared_array, "Type:", squared_array.dtype)

# 37. Unary Operations
sqrt_array = np.sqrt(array_1d).astype(np.float64)
print("Square Root of Array:", sqrt_array, "Type:", sqrt_array.dtype)

exp_array = np.exp(array_1d).astype(np.float64)
print("Exponential of Array:", exp_array, "Type:", exp_array.dtype)

log_array = np.log(np.array([1, 2, 3, 4, 5], dtype=np.float64))
print("Logarithm of Array:", log_array, "Type:", log_array.dtype)

# 38. Trigonometric Functions
sin_array = np.sin(np.pi * array_1d / 5).astype(np.float64)
print("Sine of Array:", sin_array, "Type:", sin_array.dtype)

cos_array = np.cos(np.pi * array_1d / 5).astype(np.float64)
print("Cosine of Array:", cos_array, "Type:", cos_array.dtype)

tan_array = np.tan(np.pi * array_1d / 5).astype(np.float64)
print("Tangent of Array:", tan_array, "Type:", tan_array.dtype)

# 39. Matrix Multiplication
matrix_1 = np.array([[1, 2], [3, 4]], dtype=np.int32)
matrix_2 = np.array([[5, 6], [7, 8]], dtype=np.int32)
matrix_product = np.dot(matrix_1, matrix_2)
print("Matrix Multiplication:\n", matrix_product, "Type:", matrix_product.dtype)

# 40. Dot Product and Cross Product
vector_1 = np.array([1, 2, 3], dtype=np.int32)
vector_2 = np.array([4, 5, 6], dtype=np.int32)
dot_product = np.dot(vector_1, vector_2)
print("Dot Product of Vectors:", dot_product, "Type:", type(dot_product))

cross_product = np.cross(vector_1, vector_2)
print("Cross Product of Vectors:", cross_product, "Type:", cross_product.dtype)

# 41. Inverse and Determinant of a Matrix
matrix = np.array([[1, 2], [3, 4]], dtype=np.float64)
inverse_matrix = np.linalg.inv(matrix)
print("Inverse of Matrix:\n", inverse_matrix, "Type:", inverse_matrix.dtype)

determinant = np.linalg.det(matrix)
print("Determinant of Matrix:", determinant, "Type:", type(determinant))

# 42. Solving Linear Equations
coefficients = np.array([[2, 1], [1, 3]], dtype=np.float64)
constants = np.array([8, 13], dtype=np.float64)
solutions = np.linalg.solve(coefficients, constants)
print("Solutions to Linear Equations:", solutions, "Type:", solutions.dtype)


# --- Statistical Operations ---

# 43. Array Aggregation Functions
array_sum = np.sum(array_2d)
print("Sum of 2D Array:", array_sum, "Type:", type(array_sum))

array_mean = np.mean(array_2d)
print("Mean of 2D Array:", array_mean, "Type:", type(array_mean))

array_std = np.std(array_2d)
print("Standard Deviation of 2D Array:", array_std, "Type:", type(array_std))

array_min = np.min(array_2d)
print("Minimum Value in 2D Array:", array_min, "Type:", type(array_min))

array_max = np.max(array_2d)
print("Maximum Value in 2D Array:", array_max, "Type:", type(array_max))

# 44. Finding Min/Max and Their Indices
min_value = np.min(array_2d)
min_index = np.argmin(array_2d)
print("Minimum Value:", min_value, "at index", min_index)

max_value = np.max(array_2d)
max_index = np.argmax(array_2d)
print("Maximum Value:", max_value, "at index", max_index)

# 45. Summation Across Axes
column_sum = np.sum(array_2d, axis=0)
print("Sum of Each Column:", column_sum, "Type:", column_sum.dtype)

row_sum = np.sum(array_2d, axis=1)
print("Sum of Each Row:", row_sum, "Type:", row_sum.dtype)

# 46. Cumulative Sum and Product
cumsum_array = np.cumsum(array_1d)
print("Cumulative Sum of Array:", cumsum_array, "Type:", cumsum_array.dtype)

cumprod_array = np.cumprod(array_1d)
print("Cumulative Product of Array:", cumprod_array, "Type:", cumprod_array.dtype)

# 47. Mean, Median, and Standard Deviation
mean_value = np.mean(array_2d)
print("Mean of 2D Array:", mean_value, "Type:", type(mean_value))

median_value = np.median(array_2d)
print("Median of 2D Array:", median_value, "Type:", type(median_value))

std_dev_value = np.std(array_2d)
print("Standard Deviation of 2D Array:", std_dev_value, "Type:", type(std_dev_value))

# 48. Percentile and Quantile
percentile_50 = np.percentile(array_1d, 50)
print("50th Percentile (Median):", percentile_50, "Type:", type(percentile_50))

quantile_25 = np.quantile(array_1d, 0.25)
print("25th Quantile:", quantile_25, "Type:", type(quantile_25))

# 49. Correlation Coefficient and Covariance
data = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]], dtype=np.float64)
corr_coeff = np.corrcoef(data)
print("Correlation Coefficient Matrix:\n", corr_coeff, "Type:", corr_coeff.dtype)

cov_matrix = np.cov(data)
print("Covariance Matrix:\n", cov_matrix, "Type:", cov_matrix.dtype)


# --- Advanced Indexing and Broadcasting ---

# 50. Boolean Indexing
bool_array = array_1d > 3
print("Boolean Array (values > 3):", bool_array, "Type:", bool_array.dtype)

filtered_array = array_1d[array_1d > 3]
print("Filtered Array (values > 3):", filtered_array, "Type:", filtered_array.dtype)

# 51. Advanced Indexing with np.ix_
ix_array = np.ix_([0, 2], [1, 2])
advanced_indexed = array_2d[ix_array]
print("Advanced Indexed Array:\n", advanced_indexed, "Type:", advanced_indexed.dtype)

# 52. Fancy Indexing
fancy_indexed = array_2d[[0, 2], [1, 2]]
print("Fancy Indexing Example:", fancy_indexed, "Type:", fancy_indexed.dtype)

# 53. Broadcasting
broadcast_array = array_1d + np.array([10], dtype=np.int32)
print("Broadcasting Example (add 10):", broadcast_array, "Type:", broadcast_array.dtype)

# 54. Meshgrid
x = np.array([1, 2, 3], dtype=np.int32)
y = np.array([4, 5, 6], dtype=np.int32)
xx, yy = np.meshgrid(x, y)
print("Meshgrid X:\n", xx, "Type:", xx.dtype)
print("Meshgrid Y:\n", yy, "Type:", yy.dtype)

# 55. Masked Arrays
masked_array = np.ma.masked_array(array_1d, mask=[0, 1, 0, 0, 1])
print("Masked Array:", masked_array, "Type:", masked_array.dtype)

# 56. Generating Random Numbers and Setting Seed
np.random.seed(42)
random_seeded = np.random.rand(3)
print("Random Numbers with Seed:", random_seeded, "Type:", random_seeded.dtype)

# 57. Broadcasting with np.newaxis
broadcasted_with_newaxis = array_1d[:, np.newaxis] + np.array([10, 20, 30], dtype=np.int32)
print("Broadcasting with new axis:\n", broadcasted_with_newaxis, "Type:", broadcasted_with_newaxis.dtype)


# --- Miscellaneous Operations ---

# 58. Finding Unique Elements
unique_elements = np.unique(array_2d)
print("Unique Elements in 2D Array:", unique_elements, "Type:", unique_elements.dtype)

# 59. Clipping Array Values
clipped_array = np.clip(array_2d, 3, 7)
print("Clipped Array (values between 3 and 7):\n", clipped_array, "Type:", clipped_array.dtype)

# 60. Replacing Array Values with `np.where()`
replaced_array = np.where(array_2d > 5, 10, array_2d)
print("Array with Replaced Values (if > 5):\n", replaced_array, "Type:", replaced_array.dtype)

# 61. Counting Non-Zero Elements
non_zero_count = np.count_nonzero(array_2d)
print("Number of Non-Zero Elements:", non_zero_count, "Type:", type(non_zero_count))

# 62. Finding the Trace of a Matrix
matrix_trace = np.trace(array_2d)
print("Trace of 2D Array (sum of diagonal):", matrix_trace, "Type:", type(matrix_trace))

# 63. Rounding Arrays
rounded_array = np.round(random_array, 2)
print("Rounded Random Array:\n", rounded_array, "Type:", rounded_array.dtype)

# 64. Memory Layout Information
memory_info = array_2d.flags
print("Memory Layout Information:\n", memory_info)

# 65. Checking for NaNs and Infinities
nan_array = np.array([1, 2, np.nan, 4, np.inf], dtype=np.float64)
print("Array with NaN and Inf:", nan_array, "Type:", nan_array.dtype)

nan_mask = np.isnan(nan_array)
print("NaN Mask:", nan_mask, "Type:", nan_mask.dtype)

inf_mask = np.isinf(nan_array)
print("Infinity Mask:", inf_mask, "Type:", inf_mask.dtype)

# 66. Replacing NaNs and Infs
replaced_nans = np.nan_to_num(nan_array, nan=-1, posinf=999, neginf=-999)
print("Array with NaNs and Infs Replaced:", replaced_nans, "Type:", replaced_nans.dtype)
