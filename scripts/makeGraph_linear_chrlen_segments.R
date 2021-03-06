args <- commandArgs()

ratio<-read.table(args[4], header=TRUE);

png(filename = paste(args[4],".segments.png",sep = ""), width = 2280, height = 218,
    units = "px", pointsize = 20, bg = "white", res = NA)
par(mar=c(4,0,0,0))
count<-1
widths<-vector(length=24)
for (i in c(1:24)) {
	ch <- which(ratio$Chromosome==i)
	widths[count]<-max(ratio$Position[ch])
        count<-count+1
}
widths
nf <- layout(matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24), 1, 24, byrow=TRUE), widths=widths)
for (i in c(1:24)) {
	tt <- which(ratio$Chromosome==i)
	if (length(tt)>0) {
	 plot(ratio$Position[tt],ratio$LogRatio[tt],ylim = c(-2,2),yaxt="n",xlab = paste ("chr",i),ylab = "log2-ratios",pch = ".",col = colors()[201])
         points(ratio$Position[tt],ratio$Summary[tt], pch = ".", col = colors()[88],cex=3)
	 tt <- which(ratio$Chromosome==i  & ratio$Summary > 0.2 )
	 points(ratio$Position[tt],ratio$Summary[tt], pch = ".", col = colors()[136],cex=3)
	 tt <- which(ratio$Chromosome==i  & ratio$Summary < -0.2)
	 points(ratio$Position[tt],ratio$Summary[tt], pch = ".", col = colors()[461],cex=3)
         abline(h=0)
	}

}

dev.off()
