importAssociationRuleMiningAprioriDataset <- function(associationRuleMiningAprioriDatasetFileName) {
  
  #getting transaction from from AssociationRuleMiningApriori dataset
  #after getting the dataset create a sparx mattrix
  associationRuleMiningAprioriDataset = read.transactions('Market_Basket_Optimisation.csv', sep = ',', rm.duplicates = TRUE)
  
  return (associationRuleMiningAprioriDataset)
  
}

#Save AssociationRuleMiningApriori Model
saveAssociationRuleMiningAprioriRules <- function(associationRuleMiningAprioriRules) {
  
  saveRDS(associationRuleMiningAprioriRules, file = "AssociationRuleMiningAprioriRules.RDS")
}