Questions: [lab1.pdf](https://drive.google.com/file/d/1l4sY0c3UxrMn8riavTI3PWXh52OEOCmv/view)

## 1. Correct a Java expression to correspond to a Lisp expression.
### Attempt:
```java
(a + b) * (a - 1/b);
```
### Answer:
```java

```

## 2. Observe floating-point rounding and floating-point overflow
### Attempt:
- all the programs produce the same output number for the powers 544 and 555 but not for the power 566
### Answer:


## 3. Observe floating-point rounding and floating-point overflow
### Attempt:
This is likely to be due to underflow of floating-point numbers. When a number becomes so small, the PL will be fixed points to round to. This happens across all numbers but the fixed points are closer together the closer to 0. By the looks of it, the number 2.7755577 isn't a fixed-point and therefore rounded to 2.7755575.
### Answer:


## 4. Devise an assertion that will detect floating-point overflow and underflow in Java
### Attempt:
```java

```
### Answer:
```java

```

## 5. Devise an assertion that will detect floating-point overflow and underflow in Java
### Attempt:
```java

```
### Answer:
```java

```

## 6. Observe large integers in Java, Ada and Lisp
### Attempt:
| PL | 5^5 | 5^10 | 5^20 | 5^30 |
| -  | -   | -    | -    | -    |
|Java| 3125 | 9765625 | 1661992960 | 433305513 |
|Lisp| 3125 | 9765625 | 1977800241 | 931322574615478515625 |
|Ada | 3125 | CONSTRAINT_ERROR | CONSTRAINT_ERROR | CONSTRAINT_ERROR |

- all the programs compute the same number for the power 5 5 but not for the power 5 10
### Answer:


## 7. Observe large integers in Java, Ada and Lisp
### Attempt:
30517578125
### Answer:


## 8. Observe large integers in Java, Ada and Lisp
### Attempt:
The wrong values can be given when an integer overflow occurs. This happens with very large numbers and is tried to the size of memory allocated the value (often limited by the CPU or architecture). An integer overflow occurs when the number (931322574615478515625) is bigger than the maximum value supported (2147483647). Unfortunately for the developer, there is no exception thrown but instead the higher bits are truncated to fit the maximum number of bit. 

An interesting view of this is passing 5^30 (task 2) to the Java program which results in:
1, 5, 25, 125, 625, 3125, 15625, 78125, 390625, 1953125, 9765625, 48828125, 244140625, 1220703125, 1808548329, 452807053, -2030932031, -1564725563, 766306777, -463433411, 1977800241, 1299066613, -2094601527, -1883073043, -825430623, 167814181, 839070905, -99612771, -498063855, 1804648021, 433305513

We see here that the number somewhat flip between positive and negative. This is because Java uses signed 32-bit numbers where the left most bit is used to infer the sign of the number.
### Answer:


## 9. 
### Attempt:
```java

```
### Answer:
```java

```

## 10. 
### Attempt:

### Answer:

