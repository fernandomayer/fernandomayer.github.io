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
##  [1] -0.09493661  0.79973631  1.35726316  0.79571866  0.31990204
##  [6]  0.06637747 -0.65336687  1.47621587 -0.70674931 -0.69989223
```

A local figure:

![](/img/icon.png)

And this would be a silly histogram:


```r
hist(x)
```

![plot of chunk histo](static/img/histo-1.png)
