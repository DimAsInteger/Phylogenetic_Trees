require(seqinr)
require(ape)
require(phangorn)

#load .clustal file previously generated from a multiple sequence alignment program
aln  <- read.alignment(file = "c://path//to//filename.clustal", format = "clustal")

#Convert MSA into a character matrix
as.matrix(aln)

#Calculation of distance between nodes
mydist <- dist.alignment(aln)
mydist

treeNmodel = NJ(mydist)
treeNmodel

#Plot N Model for both rooted and unrooted trees:
layout(matrix(c(1,2), 2, 1), height = c(0.25, 0.25))
par(mar = c(1, 1, 1, 1))
plot(treeNmodel, "phylogram", main = "CD45 Rooted NJ Tree", show.node.label = TRUE, edge.color = "red", edge.width = 3)
plot(treeNmodel, "unrooted", main="CD45 Unrooted NJ Tree", show.node.label = TRUE, edge.width = 3)


