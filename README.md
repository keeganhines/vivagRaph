vivagRaph
=========

R package for interactive network plots using VivaGraph js. Built with `htmlwidgets`.  

**Example Use**

```
Nodes=data.frame(nodeName=c('Bill','Ted'),group=c(1,1))
Edges=data.frame(source=0,target=1,value=1)

vivagRaph(nodes=Nodes,edges=Edges,options='')
```
