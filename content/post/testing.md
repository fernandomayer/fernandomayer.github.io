+++
date = "2017-07-18T12:00:00"
draft = false
tags = ["academic", "hugo", "teste"]
title = "Testing Hugo and knitr"
math = true
summary = """
A simple blog post for testing Hugo with knitr.
"""

+++



Here we will write some text and below a very silly random number
generation:


```r
x <- rnorm(10)
x
```

```
##  [1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078 -0.8204684
##  [7]  0.4874291  0.7383247  0.5757814 -0.3053884
```

A local figure:

![](/img/icon.png)

And this would be a silly histogram:


```r
hist(x)
```

![plot of chunk histo](static/img/histo-1.png)
