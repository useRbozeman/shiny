poisPlot <- function(pois.vec, ...){
  tab <- table(pois.vec)
  x.vals <- as.numeric(dimnames(tab)$pois.vec)
  y.vals <- as.vector(tab)
  plot(tab, lwd = 3, 
       ylab = "Count", 
       xlab = " ", 
       xaxt = "n", ...)
  x.tick <- seq(x.vals[1], x.vals[length(x.vals)],1)
  axis(at = x.tick, 1, 
       labels = as.character(x.tick), 
       tick = T)
  points(x.vals, y.vals, 
         col = "#2ca25f", 
         pch = 20, 
         cex = 2)
}
