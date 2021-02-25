# Multiply
### `2.1*5`
# Divide
### `2.1*5/3`
# Addition
### `2+5`
# Variables
### `a <- 2+3` or `a = 2+3`
# Subtract
### `a-0.16`
# Power
### `(a)^0.5`
# Square Root
### `sqrt(a)`
# Exponential (e)
### `exp(1)`
# Natural Log (Log to base e)
### `log(exp(1))`
# Log to Base 10
### `log10(10^5)`
# Log to Base n
```
> n = 10
> log(10^5, n)
[1] 5
```
# Pi (pi)
```
> pi
[1] 3.141593
```
# Plotting Graph (plot)
### A random Plot
```
> x = seq(-2, 2, 1)
> x
[1] -2 -1  0  1  2
> y = sin(x)
> plot(x, y, type="l")
```
### A Better Sine curve plot
```
> x = seq(-2*pi, 2*pi, 1)
> x
 [1] -6.2831853 -5.2831853 -4.2831853 -3.2831853 -2.2831853 -1.2831853 -0.2831853  0.7168147  1.7168147
[10]  2.7168147  3.7168147  4.7168147  5.7168147
> y = sin(x)
> plot(x, y, type="l")
```
### Best Sine curve plot
```
> x = seq(-2*pi, 2*pi, 0.01)
> y = sin(x)
> plot(x, y, type="l")
```
# Basic Data Types
| Data Type | Values |
|-----------|--------|
| Numeric | Set of all real numbers |
| Integer | Set of all  integers Z |
| Logical | TRUE and FALSE |
| Character | "a", "b", "c", …, "@", "#", "$", …., "1", "2", …etc |
## 1. Numeric Data Type
```
> v=2.53
> print(class(v))
[1] "numeric"
```
## 2. Integer Data Type
```
> print(class(v))
[1] "interger"
```
## 3. Logical Data Type
```
> v = TRUE
> print(class(v))
[1] "logical"
```
## 4. Complex Data Type
```
> m=4+10i
> print(class(m))
[1] "4+10i"
```
# R-objects
|R-objects|
|---|
|Vectors|
|Lists|
|Matrices|
|Arrays|
|Factors|
|Data Frames|
## 1.1. Vectors
### Vector must be created using concatenation function: c(parameters)
```
> s <- c(1,2,3)
> print(s)
[1] 1 2 3

> branch=c('IT','CMPN','MECH')
> print(branch)
[1] "IT" "CMPN" "MECH"
```
## 1.2 Vectors using Sequence (seq)
```
> z = seq(-1, 2, 0.5)
> z
[1] -1.0 -0.5 0.0 0.5 1.0 1.5 2.0
```
## Length of vectors
```
> length(z)
[1] 7
```
## Data Frames
```
> names <- c("Mahi","Sourav","Azhar", "Sunny","Pataudi","Dravid") 
> names
```