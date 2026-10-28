# Python Basics Quiz

### Question 1

Using either the help function or online documentation, find the default for axis in the Pandas drop function (`pandas.DataFrame.drop`). Enter your answer below.

**Answer:** `0`

#### Explainer

In pandas, the default signature for the DataFrame drop method is `DataFrame.drop(labels=None, axis=0, index=None, columns=None, ...)`. An `axis` value of `0` (or `'index'`) specifies dropping rows, whereas `axis=1` (or `'columns'`) specifies dropping columns.

---

### Question 2

Using either the help function or online documentation as a resource, select the default option for the *kind* input parameter for the Numpy sort function (`np.sort`). ([https://docs.scipy.org/doc/numpy-1.15.1/reference/generated/numpy.sort.html](https://docs.scipy.org/doc/numpy-1.15.1/reference/generated/numpy.sort.html))

The *kind* parameter indicates the sorting algorithm used.

* **quicksort** **(Correct Answer)**


* mergesort


* stable


* heapsort



#### Explainer

The standard NumPy function signature is `numpy.sort(a, axis=-1, kind='quicksort', order=None)`. Therefore, `'quicksort'` is the default sorting algorithm.

---

### Question 3

What does the following function `get_element` return when the input is `lst = [1, 7, 3, 5]`?

```python
def get_element(lst):
    new_lst = []
    for i in lst:
        new_lst.append(i**2)
        return lst[1]

```

* 1
* 3
* 9
* **7** **(Correct Answer)**


* 25
* 49

#### Explainer

The `return` statement is placed inside the first iteration of the `for` loop. During the very first loop iteration ($i = 1$), `new_lst` appends `1**2`, and then immediately executes `return lst[1]`. Since indexing in Python starts at `0`, `lst[1]` accesses the element at index 1 of `[1, 7, 3, 5]`, which is **7**.

---

### Question 4

What is the output of the following code?

```python
my_dict = {'peaches':'cream', 'cat':'dog', 'this one':'that one'}
my_dict['this one']

```

* `{'peaches':'cream', 'cat':'dog', 'this one':'that one'}`


* `'dog'`


* `{'that one'}`


* **`'that one'`** **(Correct Answer)**


* `'peaches'`



#### Explainer

Accessing a Python dictionary with key lookup syntax `dictionary[key]` retrieves the corresponding value mapped to that key. Here, the key `'this one'` maps directly to the string value `'that one'`.

---

### Question 5

What are the keys in `my_dict`?

```python
my_dict = {'peaches':'cream', 'cat':'dog', 'this one':'that one'}
my_dict['this one']

```

* **`'peaches', 'cat', 'this one'`** **(Correct Answer)**


* `peaches, cat, this one`


* `'cream', 'dog', 'that one'`


* `cream, dog, that one`



#### Explainer

In a Python dictionary structured as `{key: value}`, the keys appear before the colons. The keys in `my_dict` are string literals `'peaches'`, `'cat'`, and `'this one'`.

---

### Question 6

What are the values in `my_dict`? Select all that apply.

```python
my_dict = {'peaches':'cream', 'cat':'dog', 'this one':'that one'}

```

* **`'cream', 'dog', 'that one'`** **(Correct Answer)**


* `'peaches', 'that one', 'cat'`


* `'cream', 'dog', 'cat'`


* `'cream', 'dog', 'this one'`



#### Explainer

In the dictionary format `{key: value}`, the values appear after the colons. The values stored in `my_dict` are `'cream'`, `'dog'`, and `'that one'`.

---

### Question 7

What happens when the function `save_plot` is called?

```python
import matplotlib.pyplot as plt

def save_plot(x, y):
    plt.plot(x, y)
    plt.savefig('new_plot')

```

* **A plot is outputted and saved as 'new_plot'.** **(Correct Answer)**


* The function **returns** a plot.


* nothing


* y



#### Explainer

`plt.plot(x, y)` creates a visual plot figure from the coordinates `(x, y)`, and `plt.savefig('new_plot')` writes that figure to a file on disk named `'new_plot'`. The function does not have a `return` statement, so it returns `None` rather than returning a plot object.
