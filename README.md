vivagRaph
=========

R package for interactive network plots using VivaGraph js. Built with `htmlwidgets`.  

**Example Use**

```
Nodes = data.frame(c('A','B','C','D'),group=c(1,1,1,1))
Edges = data.frame(source=c(0,1,0,2),target=c(1,2,2,3))

vivagRaph(nodes=Nodes,edges=Edges)
```


