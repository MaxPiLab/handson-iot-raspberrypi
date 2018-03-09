# PYTHON BASICS

## Table of Contents

1. Hello, World!  
2. Variables and Types  
3. Lists  
4. Basic Operators  
5. String Formatting  
6. Basic String Operations  
7. Conditions  
8. Loops  
9. Functions  

## Hello, World!

```
print "Hello World!"
print("Hello World!")
```
## Variables and Types

Python is completely object oriented, and not "statically typed". You do not need to declare variables before using them, or declare their
type. Every variable in Python is an object.  

### NUMBERS

#### 1. INTEGER

``` myint=2```

#### 2. Floating Point Number

``` myfloat=2.0```

### LISTS

Lists are very similar to arrays. They can contain any type of variable, and they can contain as many variables as you wish. 
Lists can also be iterated over in a very simple manner. Here is an example of how to build a list.  

#### LIST METHODS

|Function|Description|
|--------|-----------|
|**append()**|Add a single element to the end of the list|
|**extend()**|Add all elements of a list to the another list|
|**pop()**|Removes and returns an element at the given index|
|**del()**|We can delete one or more items from a list using the keyword del|
|         |It can even delete the list entirely|
|**remove()**| Removes an item from the list|
|**insert()**| Insert an item at the defined index|
|**reverse()**|Reverse the order of items in the list|
|**sort()**|Sort items in a list in ascending order|
|**len()**|Gives the total number of elements in list|  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37181010-422be71a-2351-11e8-835b-850a5375d8a0.png">
</p>

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37181015-4996bed0-2351-11e8-9c11-e77bbd087fe9.png">
</p>



#### LIST SLICES

Slice operator works on list. This is used to display more than one selected values on the output screen.Slices are treated as boundaries and the result will contain all the elements between boundaries.

**Syntax**:  
example=Listname[start: stop: step]
Where start, stop & step - all three are optional. If you omit first index, slice starts from '0' and omitting of
stop will take it to end. Default value of step is 1.  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37191601-afdaab7c-2386-11e8-8479-f4dc18dfed78.png">
</p>


