source("AssociationRuleMiningAprioriUtils.R")
library(ggplot2)
library(arules)

#reading dataset 
associationRuleMiningAprioriDataset = importAssociationRuleMiningAprioriDataset("Market_Basket_Optimisation.csv")


#reading HierarchialClustering rules
associationRuleMiningAprioriRules = readRDS("AssociationRuleMiningAprioriRules.RDS")

#create item frequency plot
visualizeAssociationRuleMiningAprioriItemFrequencyPlot <- function(associationRuleMiningAprioriDataset){
  
  png("AssociationRuleMiningAprioriItemFrequencyPlot.png")
  
  itemFrequencyPlot(associationRuleMiningAprioriDataset, topN = 10)
  
  dev.off()
  
}

#visualizing associationRuleMiningApriori rules
visualizeAssociationRuleMiningAprioriRues <- function(associationRuleMiningAprioriRules){
  
  write(associationRuleMiningAprioriRules,
        file = "AssociationRuleMiningAprioriRules.csv",
        sep = ",",
        quote = TRUE,
        row.names = FALSE)
  
}

#visualizeAssociationRuleMiningAprioriItemFrequencyPlot(associationRuleMiningAprioriDataset)
visualizeAssociationRuleMiningAprioriRues(associationRuleMiningAprioriRules)
