### R code from vignette source 'useDataPkgs.Rnw'

###################################################
### code chunk number 1: loadLibs
###################################################
library("annotate")
library("hgu95av2.db")
library("GO.db")


###################################################
### code chunk number 2: getGO
###################################################
temp <- as.list(hgu95av2GO)
temp[5]


###################################################
### code chunk number 3: showmget
###################################################
mget(c("738_at", "40840_at", "41668_r_at"), hgu95av2GENENAME)


###################################################
### code chunk number 4: moremget
###################################################
temp <- mget(c("41561_s_at", "40840_at", "41668_r_at"), hgu95av2GO)


###################################################
### code chunk number 5: gettingGO
###################################################
temp <- get("738_at", hgu95av2GO)
names(temp)
temp[["GO:0008253"]][["Evidence"]]
temp[["GO:0008253"]][["Ontology"]]


###################################################
### code chunk number 6: useDataPkgs.Rnw:226-227
###################################################
mget(names(get("738_at", hgu95av2GO)), GOTERM)


###################################################
### code chunk number 7: useDataPkgs.Rnw:237-238
###################################################
sessionInfo()


