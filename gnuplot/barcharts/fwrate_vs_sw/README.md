Barchart with multiple groups
###

In this plot, I have a table with items organised in two dimensions:

```
categories   → a' b' c'
A 1 2 3
B 4 5 6
C 7 8 9
↓ 

```

We have the first category, (A,B,C in rows) and the second category (a', b', c').
Your plot will be (cat A of type a' is 1; cat A of type b' is 2; etc.)


Info on configuration
---

``` set boxwidth ``` to create a space between the bars;
``` set key above ``` to put the key on top of the title
``` set style histogram ...``` ??? probably to clusterize, don't know
``` set style fill transparent ... ``` to set the transparency of the items
``` set datafile missing ``` to denote missing data character in file
 
Info on plot
---

The plot should be done with 

```
plot file u 2:xtic(1) w hist, "" u 3:xtic(1) w hist, ...
```

Info on plot config
---

```... ti col ``` to enable the title and grouping category
