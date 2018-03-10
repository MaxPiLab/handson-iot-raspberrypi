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

### Numbers

#### 1. Integer

``` myint=2```

#### 2. Floating Point Number

``` myfloat=2.0```

### List

Lists are very similar to arrays. They can contain any type of variable, and they can contain as many variables as you wish. 
Lists can also be iterated over in a very simple manner.  

#### Creating List

In Python, a list can be created by writing all the elements inside a square bracket [ ], separated by commas.  

It can have any number of elements and they may be of different types (integer, float, string etc.).  

Also, a list can even have another list as its element. This is called nested list.  

#### Accessing List elements

We can use the index operator [] to access an item in a list. Index starts from 0 i.e, first element of the list has index 0 and so on.  
<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37181010-422be71a-2351-11e8-835b-850a5375d8a0.png">
</p>

#### List SLICES

Slice operator works on list. This is used to display more than one selected values on the output screen.Slices are treated as boundaries and the result will contain all the elements between boundaries.

**Syntax**:  
example=Listname[start: stop: step]
Where start, stop & step - all three are optional. If you omit first index, slice starts from '0' and omitting of
stop will take it to end. Default value of step is 1.  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37191601-afdaab7c-2386-11e8-8479-f4dc18dfed78.png">
</p>  

#### List METHODS

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
<img src="https://user-images.githubusercontent.com/35935951/37192126-b8952fdc-2389-11e8-83fc-65d46267284e.png">
</p>  

#### Other Built-in Functions for List operations

|Function|Description|
|--------|-----------|
|**list()**|Convert an iterable (tuple, string, set, dictionary) to a list.|
|**max()**|Return the largest element in the list|
|**min()**|Return the smallest item in the list|  

### Basic Operators

#### 1. Arithematic Operators

Just as any other programming languages, the addition, subtraction, multiplication, and division operators can be used with numbers.  

|**Operator**|**Description**|**Syntax**|
|------------|---------------|----------|
|**+**|Addition: adds two operands|x + y|
|**-**|Subtraction: subtracts two operands|x - y|
||Multiplication: multiplies two operands|x * y|
|/|Division (float): divides the first operand by the second|x / y|
|//|Division (floor): divides the first operand by the second|x//y|
|%|Modulus: returns the remainder when first operand is divided by the second|x % y|  

#### Using Operators with Strings

Python supports concatenating strings using the addition operator:  

`helloworld = "hello" + " " + "world"`

Python also supports multiplying strings to form a string with a repeating sequence:

`lotsofhellos = "hello" * 10`  

#### Using Operators with Lists

`Lists can be joined with the addition operators:  

even_numbers = [2,4,6,8]  
odd_numbers = [1,3,5,7]  
all_numbers = odd_numbers + even_numbers`  

Just as in strings, Python supports forming new lists with a repeating sequence using the multiplication operator:  

`print [1,2,3] * 3`  

#### 2. Relational Operators

Relational operators compares the values. It either returns True or False according to the condition. For example, >,<,==,!=,<=,>= .  

#### 3. Logical operators

Logical operators perform Logical AND, Logical OR and Logical NOT operations. For example, and,or,not.  

#### 4. Bitwise operators

Logical operators perform Logical AND, Logical OR and Logical NOT operations. For example, &,|,~,^,>>,<<.  

#### 5. Assignment operators

Assignment operators are used to assign values to the variables.  

### String Formatting

Python uses C-style string formatting to create new, formatted strings. The "%" operator is used to format a set of variables enclosed in a "tuple" (a fixed size list), together with a format string, which contains normal text together with "argument specifiers", special symbols like "%s" and "%d".  

Let's say you have a variable called "name" with your user name in it, and you would then like to print out a greeting to that user.  

`# This prints out "Hello, John!"  
name = "John"  
print "Hello, %s!" % name`  

To use two or more argument specifiers, use a tuple (parentheses):  

`# This prints out "John is 23 years old."  
name = "John"  
age = 23  
print "%s is %d years old." % (name, age)`  

Any object which is not a string can be formatted using the %s operator as well. The string which returns from the "repr" method of that object is formatted as the string. For example:

`# This prints out: A list: [1, 2, 3]  
mylist = [1,2,3]  
print "A list: %s" % mylist`  

Here are some basic argument specifiers you should know:  

`%s - String (or any object with a string representation, like numbers)  
%d - Integers  
%f - Floating point numbers  
%.<number of digits>f - Floating point numbers with a fixed amount of digits to the right of the dot.  
%x/%X - Integers in hex representation (lowercase/uppercase)`  

#### Basic String Operations

Strings are bits of text. They can be defined as anything between quotes:  

`astring = "Hello world!"`  

As you can see, the first thing you learned was printing a simple sentence. This sentence was stored by Python as a string. However, instead of immediately printing strings out, we will explore the various things you can do to them.  

`print len(astring)`  

### Conditions

Python uses boolean variables to evaluate conditions. The boolean values True and False are returned when an expression is compared or evaluated. For example:  

`x = 2  
print x == 2 # prints out True  
print x == 3 # prints out False  
print x < 3 # prints out True`  

Notice that variable assignment is done using a single equals operator "=", whereas comparison between two variables is done using the double equals operator "==". The "not equals" operator is marked as "!=".  

### Loops

There are two types of loops in Python, for and while.  

**The *"for"* loop**  

For loops iterate over a given sequence. Here is an example:  

`primes = [2, 3, 5, 7]  
for prime in primes:  
print prime`  

For loops can iterate over a sequence of numbers using the "range" and "xrange" functions. The difference between range and xrange is that the range function returns a new list with numbers of that specified range, whereas xrange returns an iterator, which is more efficient. (Python 3 uses the range function, which acts like xrange). Note that the xrange function is zero based.  

`# Prints out the numbers 0,1,2,3,4  
for x in xrange(5): # or range(5)  
print x  

# Prints out 3,4,5  
for x in xrange(3, 6): # or range(3, 6)  
print x  

# Prints out 3,5,7  
for x in xrange(3, 8, 2): # or range(3, 8, 2)  
print x`  

***"while"* loops**  

While loops repeat as long as a certain boolean condition is met. For example:  

`# Prints out 0,1,2,3,4  

count = 0  
while count < 5:  
print count  
count += 1`  

***"break"* and *"continue"* statements**

break is used to exit a for loop or a while loop, whereas continue is used to skip the current block, and return to the "for" or "while" statement. A few examples:  

`# Prints out 0,1,2,3,4  

count = 0  
while True:  
print count  
count += 1  
if count >= 5:  
break  

# Prints out only odd numbers - 1,3,5,7,9  

for x in xrange(10):  
# Check if x is even  
if x % 2 == 0:  
continue  
print x  `  

### Functions

**What are ***Functions?**

Functions are a convenient way to divide your code into useful blocks, allowing us to order our code, make it more readable, reuse it and save some time. Also functions are a key way to define interfaces so programmers can share their code.  

**How do you write functions in Python?**

As we have seen on previous tutorials, Python makes use of blocks. A block is a area of code of written in the format of:  

`block_head:  
1st block line  
2nd block line  
...`  

Where a block line is more Python code (even another block), and the block head is of the following format: block_keyword block_name(argument1,argument2, ...) Block keywords you already know are "if", "for", and "while". Functions in python are defined using the block keyword "def", followed with the function's name as the block's name. For example:  

`def my_function():  
print "Hello From My Function!"`  

Functions may also receive arguments (variables passed from the caller to the function). For example:  

`def my_function_with_args(username, greeting):  
print "Hello, %s , From My Function!, I wish you %s"%(username, greeting)`  

Functions may return a value to the caller, using the keyword- 'return' . For example:  

`def sum_two_numbers(a, b):  
return a + b`  

**How do you call functions in Python?**  

Simply write the function's name followed by (), placing any required arguments within the brackets. For example, lets call the functions written above (in the previous example):  

`# print a simple greeting  
my_function()  

#prints - "Hello, John Doe, From My Function!, I wish you a great year!"  
my_function_with_args("John Doe", "a great year!")  

# after this line x will hold the value 3!
x = sum_two_numbers(1,2)`

