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
##  [1] -0.18382704 -0.75916682  0.84185165  0.18241534 -0.95325356
##  [6] -0.41166348  1.21606146  0.43104702  0.02365191  0.05615554
```

A local figure:

![](/img/icon.png)

And this would be a silly histogram:


```r
hist(x)
```

![plot of chunk histo](static/img/histo-1.png)
