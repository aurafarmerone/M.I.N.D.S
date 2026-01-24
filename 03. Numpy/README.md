# NumPy for Beginners 🚀

> A **complete, beginner-friendly, explanation-first guide to NumPy**, built from hands-on code examples.

This README explains **what NumPy is, why it exists, how it works internally, and how to use it efficiently**, with real code and performance comparisons.



## 🧠 What is NumPy?

**NumPy (Numerical Python)** is a core Python library used for **fast numerical computation**.

At its heart, NumPy provides a powerful data structure called the **ndarray (N-dimensional array)**.

NumPy is the foundation of:

* Pandas
* SciPy
* Scikit-learn
* TensorFlow / PyTorch



## ❓ Why Do We Need NumPy?

Python lists are flexible but:

* ❌ Slow for large numerical data
* ❌ Consume more memory
* ❌ Require explicit loops

NumPy solves this by:

* Storing data in **contiguous memory**
* Using **compiled C code** internally
* Supporting **vectorized operations**

Result: 🚀 **Huge performance boost**



## ⚙️ What is an ndarray?

An **ndarray** is:

* Homogeneous (same data type)
* Fixed-size
* Stored in continuous memory

```python
arr = np.array([1, 2, 3, 4, 5])
print(arr, type(arr))
```



## 🧩 NumPy vs Python List (Conceptual)

| Feature | Python List | NumPy Array |
| ------- | ----------- | ----------- |
| Speed   | Slow        | Very Fast   |
| Memory  | High        | Low         |
| Type    | Mixed       | Same        |
| Loops   | Required    | Not needed  |



## 📦 Setup

```python
import numpy as np
import time
```



## 📦 Setup

```python
import numpy as np
import time
```



## 1️⃣ What is a NumPy Array?

A **NumPy array (ndarray)** is a fast, fixed‑type, memory‑efficient container for numerical data.

```python
arr = np.array([1, 2, 3, 4, 5])
print(arr, type(arr))
```

### 🧠 Why NumPy arrays are faster than Python lists

* Stored in **contiguous memory**
* Operations run in **compiled C code**
* No Python loop overhead



## ⏱️ Performance Comparison: List vs NumPy (Vectorization)

```python
size = 1_000_000
pylist = list(range(size))
```

### ❌ Python List (Slow – Uses Loop)

```python
start = time.time()
sqr = [x**2 for x in pylist]
end = time.time()
print(f"Time Taken by List is {end - start} seconds")
```

### ✅ NumPy Array (Fast – Vectorized)

```python
ndarr = np.array(pylist)
start = time.time()
sqr = ndarr ** 2
end = time.time()
print(f"Time Taken by Numpy Array is {end - start} seconds")
```

### 🔥 What is Vectorization?

Vectorization means **applying operations on the entire array at once**, without explicit loops.

✔ Faster
✔ Cleaner code
✔ Used everywhere in Data Science & ML



## 2️⃣ Creating NumPy Arrays

### 🔹 From Python List

```python
pylist = [1, 2, 3, 45, 67, 99]
arr = np.array(pylist)
print(arr)
```

### 🔹 Creating 2D Arrays

```python
arr2D = np.array([[1,2,3],[4,5,6],[7,8,9]])
print(arr2D)
print(arr2D.shape)
```

### 🔹 From Scratch (Zeros, Ones, Full)

```python
np.zeros((3,3), dtype='int64')
np.ones((3,3))
np.full((3,3), 99)
np.full((7,), 100)
```

### 🔹 Identity Matrix

```python
np.eye(4, dtype='int64')
```

### 🔹 Range‑based Arrays

```python
np.arange(1, 21, 2)
np.arange(1, 21)
np.linspace(1, 100, 3, dtype='int64')
```



## 3️⃣ Array Properties (Very Important)

```python
arr = np.array([1,2,3,4.0,5])
```

| Property | Meaning              |
| -------- | -------------------- |
| shape    | dimensions           |
| size     | total elements       |
| dtype    | data type            |
| ndim     | number of dimensions |

```python
arr.shape
arr.size
arr.dtype
arr.ndim
```

### 🔹 Type Conversion

```python
arr.astype(np.int64)
```



## 4️⃣ Operations on NumPy Arrays

### 🔹 Reshaping

```python
arr = np.array([[1,2,3],[4,5,6]])
arr.reshape((3,2))
```

### 🔹 Flatten (N‑D → 1‑D)

```python
arr.flatten()
```

### 🔹 Indexing

```python
arr1D = np.array([1,2,3,4,5])
arr2D = np.array([[1,2,3],[4,5,6]])

arr1D[0]
arr2D[0][2]
```

### 🔹 Fancy Indexing

```python
arr = np.array([1,2,3,4,5,7,8,9])
idx = [0,4,5]
arr[idx]
```

### 🔹 Boolean Indexing

```python
arr[arr > 4]
arr[arr % 2 == 0]
```

### 🔹 Slicing

```python
arr[2:7]
arr[::-1]
```

⚠️ **Important:** NumPy slicing returns a **view**, not a copy.



## 5️⃣ NumPy Data Types

```python
np.array([1,2,3]).dtype
np.array([1,2,3.7]).dtype
```

### 🔹 Complex Numbers

```python
arr1 = np.array([3 + 2j])
arr2 = np.array([5 + 2j])
arr1 + arr2
```

### 🔹 Object & String Types

```python
np.array([{1,2,3}, 3.14, 'STR']).dtype
np.array(['hello', 'hi']).dtype
```



## 6️⃣ Multidimensional Arrays & Axis

```python
arr = np.array([[1,2,3],[4,5,6],[7,8,9]])
```

### 🔹 Axis Meaning

* `axis = 0` → columns
* `axis = 1` → rows

```python
np.sum(arr)
np.sum(arr, axis=0)
np.sum(arr, axis=1)
```

### 🔹 3D Array

```python
arr3d = np.array([
 [[1,2,3],[4,5,6],[7,8,9]],
 [[10,12,13],[14,51,16],[17,18,19]]
])
```

```python
arr3d.shape
arr3d[0,1,2]
```



## 7️⃣ Broadcasting & Normalization ⭐

### 🔹 Broadcasting Example

```python
arr = np.array([1,2,3,4,5])
arr + 5
```

### 🔹 Broadcasting Rules

1. One dimension must be `1`
2. Compare shapes from **right to left**

```python
arr = np.array([7,8,3,7,2])
num = np.array([[2,3,4,5,6],[6,5,8,2,3]])
arr + num
```

### ❌ Invalid Broadcasting

```python
# Shapes (2x5) and (3x5) → ERROR
```



### 🔹 Normalization (Very Important in ML)

```python
num = np.array([[1,2],[4,5]])
mean = np.mean(num)
std = np.std(num)
normalized = (num - mean) / std
```

✔ Mean becomes **0**
✔ Std becomes **1**



## 8️⃣ NumPy Mathematical Functions

### 🔹 Aggregation

```python
np.sum(a)
np.prod(a)
np.min(a)
np.max(a)
np.mean(a)
np.std(a)
np.var(a)
np.median(a)
np.argmin(a)
np.argmax(a)
```

### 🔹 Power

```python
np.square(a)
np.sqrt(a)
np.power(a, 2)
```

### 🔹 Rounding

```python
np.round(b)
np.floor(b)
np.ceil(b)
np.trunc(b)
```

### 🔹 Log & Exponential

```python
np.log(a)
np.log10(a)
np.log2(a)
np.exp(a)
```

### 🔹 Extras

```python
np.unique(c)
np.sort(b)
np.abs([-3, -1, 2])
```



## 🎯 Final Takeaways

✔ NumPy is fast because of **vectorization**
✔ Broadcasting removes loops
✔ Axis operations power real‑world data
✔ Essential for Data Science & ML



### ⭐ If this helped you

Star ⭐ the repository and keep learning!

Happy Coding 🧠💻
