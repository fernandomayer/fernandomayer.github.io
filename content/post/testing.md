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
 [1] -1.3624093 -0.6788517  0.8232959 -0.1304526  1.3955315  0.9826700
 [7]  0.7147739  0.8708800  1.9975982 -0.5410510
```

And this would be a silly histogram:


```r
hist(x)
```

<img src="static/figure/histo-1.png" title="plot of chunk histo" alt="plot of chunk histo" style="display: block; margin: auto;" />
