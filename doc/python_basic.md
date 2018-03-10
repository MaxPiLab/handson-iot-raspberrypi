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
```  

Here, the built-in function **print()** is used, to print out a string to the screen. **String** is the value inside the quotation marks, i.e. Hello world!  

## Variables and Types

In Python, a variable is a named location used to store data in the memory. Each variable must have a unique name called **identifier**.  
***Note**: In Python we don't assign values to the variables, whereas Python gives the reference of the object (value) to the variable.*  

Keep in mind the following things while naming an identifier:  

1. Never use special symbols like !, @, #, $, %, etc.
2. Don't start name with a digit.  
3. Constants are put into Python modules and meant not be changed.  
4. Constant and variable names should have combination of letters in lowercase (a to z) or uppercase (A to Z) or digits (0 to 9) or an underscore (_).  

Every value in Python has a datatype. It is categorized in Python as:

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37243102-57b7782a-249a-11e8-8206-b8d3cfde39c2.jpg">
</p>   

Data type of an identifier can be known by using **type()** function.  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37243095-45c8dcf8-249a-11e8-8017-44b58b0504d3.png">
</p> 

## List

Lists are very similar to arrays. They can contain any type of variable, and they can contain as many variables as you wish. 
Lists can also be iterated over in a very simple manner.  

### Creating List

In Python, a list can be created by writing all the elements inside a square bracket [ ], separated by commas.  

It can have any number of elements and they may be of different types (integer, float, string etc.).  

Also, a list can even have another list as its element. This is called nested list.  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37243085-1cc95a12-249a-11e8-917f-66e78c5906b1.png">
</p>  

### Accessing List elements

We can use the index operator [] to access an item in a list. Index starts from 0 i.e, first element of the list has index 0 and so on.  

### List SLICES

Slice operator works on list. This is used to display more than one selected values on the output screen.Slices are treated as boundaries and the result will contain all the elements between boundaries.

**Syntax**:  
example=Listname[start: stop: step]
Where start, stop & step - all three are optional. If you omit first index, slice starts from '0' and omitting of
stop will take it to end. Default value of step is 1.  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37243087-24cdd65c-249a-11e8-85a5-b129bcd6e5dc.png">
</p>  

### List METHODS

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
<img src="https://user-images.githubusercontent.com/35935951/37243089-2e190c36-249a-11e8-85b6-68d0ae3af72a.png">
</p>  

### Other Built-in Functions for List operations

|Function|Description|
|--------|-----------|
|**list()**|Convert an iterable (tuple, string, set, dictionary) to a list.|
|**max()**|Return the largest element in the list|
|**min()**|Return the smallest item in the list|  

## Basic Operators

### 1. Arithematic Operators

Just as any other programming languages, the addition, subtraction, multiplication, and division operators can be used with numbers.  

|**Operator**|**Description**|**Syntax**|
|------------|---------------|----------|
|**+**|Addition: adds two operands|x + y|
|**-**|Subtraction: subtracts two operands|x - y|
||Multiplication: multiplies two operands|x * y|
|/|Division (float): divides the first operand by the second|x / y|
|//|Division (floor): divides the first operand by the second|x//y|
|%|Modulus: returns the remainder when first operand is divided by the second|x % y|  

### 2. Relational Operators

Relational operators compares the values. It either returns True or False according to the condition. For example, `>,<,==,!=,<=,>=` .  

### 3. Logical operators

Logical operators perform Logical AND, Logical OR and Logical NOT operations. For example, `and,or,not`.  

### 4. Bitwise operators

Logical operators perform Logical AND, Logical OR and Logical NOT operations. For example,` &,|,~,^,>>,<<`.  

### 5. Assignment operators

Assignment operators are used to assign values to the variables.  

### Using Operators with Strings

Python supports concatenating strings using the addition operator:  

`helloworld = "hello" + " " + "world"`  

Python also supports multiplying strings to form a string with a repeating sequence:  

`lotsofhellos = "hello" * 10`  

### Using Operators with Lists  

`Lists can be joined with the addition operators:  

even_numbers = [2,4,6,8]  
odd_numbers = [1,3,5,7]   
all_numbers = odd_numbers + even_numbers`   

Just as in strings, Python supports forming new lists with a repeating sequence using the multiplication operator:  

`print [1,2,3] * 3`  

## String Formatting

Python uses C-style string formatting to create new, formatted strings. The **%** operator is used to format a set of variables enclosed in a "tuple" (a fixed size list), together with a format string, which contains normal text together with "argument specifiers", special symbols like "%s" and "%d".  

```
# This prints out "Hello, John!"  
name = "John"  
print "Hello, %s!" % name
```   
To use two or more argument specifiers, use a tuple (parentheses):     

```
# This prints out "John is 23 years old."  
name = "John"  
age = 23  
print "%s is %d years old." % (name, age)
```  
Any object which is not a string can be formatted using the %s operator as well.  

```
# This prints out: A list: [1, 2, 3]  
mylist = [1,2,3]  
print "A list: %s" % mylist  
```  

Here are some basic argument specifiers :  

```
%s - String (or any object with a string representation, like numbers)  
%d - Integers  
%f - Floating point numbers  
%.<number of digits>f - Floating point numbers with a fixed amount of digits to the right of the dot.  
%x/%X - Integers in hex representation (lowercase/uppercase)
```  

#### Basic String Operations

Strings are bits of text. They can be defined as anything between quotes:  

`astring = "Hello world!"`  

As you can see, the first thing you learned was printing a simple sentence. This sentence was stored by Python as a string. However, instead of immediately printing strings out, we will explore the various things you can do to them.  

`print len(astring)`  

## Conditions

Python uses boolean variables to evaluate conditions. The boolean values True and False are returned when an expression is compared or evaluated. For example:  

```
x = 2  
print x == 2 # prints out True  
print x == 3 # prints out False  
print x < 3 # prints out True
```  

Notice that variable assignment is done using a single equals operator "=", whereas comparison between two variables is done using the double equals operator =* .The not equals operator is marked as !=.   

Decision making is required when we want to execute a code only if a certain condition is satisfied.  

The `if…elif…else` statement is used in Python for decision making.  

### Syntax of if-else block

```
if <test expression>:  
    <do something>  
       ....  
       ....  
       
elif <test expression>:  
    <do something else>  
       ....  
       ....  
       
else:  
    <do another thing>
```  
    
Here, the program evaluates the test expression and will execute statement(s) only if the **text expression is True**.If the text expression is False, the statement(s) is not executed. 

A statement is evaulated as true if one of the following is correct:  
1. The "True" boolean variable is given, or calculated using an expression, such as an arithmetic comparison.  
2. An object which is not considered "empty" is passed.  

Here are some examples for objects which are considered as empty:  
1. An empty string: ""  
2. An empty list: []  
3. The number zero: 0  
4. The false boolean variable: False  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37243428-25af0582-249f-11e8-8c78-86a83ec7cd93.png">
</p> 

## Loops

There are two types of loops in Python, for and while.  

### *for* loop 

For loops iterate over a given sequence.  

For loops can iterate over a sequence of numbers using the **range** and **xrange** functions. The difference between range and xrange is that the range function returns a new list with numbers of that specified range, whereas xrange returns an iterator, which is more efficient. (Python 3 uses the range function, which acts like xrange).    

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37243082-1131c84c-249a-11e8-82b0-49f9f7c2e831.png">
</p>  

### *while* loop   

While loops repeat as long as a certain boolean condition is met.  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37243081-089bea00-249a-11e8-954b-e7980b68e73d.png">
</p>  

### *break* and *continue* statements

`break` is used to exit a for loop or a while loop, whereas `continue` is used to skip the current block, and return to the for or while statement.  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37243079-0161b31e-249a-11e8-99ae-9871076663cb.png">
</p>  

## Functions

### What are *Functions?*

In Python, function is a group of related statements that perform a specific task.  

Functions are a convenient way to divide your code into useful blocks, allowing us to order our code, make it more readable, reuse it and save some time. Also functions are a key way to define interfaces so programmers can share their code.  

### Syntax functions in Python

`def function_name(parameters[optional]):  
	  statement(s)`  

1. Keyword `def` indicates the start of function header.  
2. A **function name** to uniquely identify it. Function naming follows the same rules of writing identifiers in Python.  
3. **Parameters** (arguments) through which we pass values to a function. They are optional.  
4. A colon (**:**) to mark the end of function header.  
5. One or more valid python statements that make up the **function body**.  
6. An optional **return** statement to return a value from the function.  

### Function calling in Python  

Simply write the function's name followed by (), placing any required arguments within the brackets.  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37243075-f7e1da94-2499-11e8-9126-18a356d6896f.png">
</p>  
