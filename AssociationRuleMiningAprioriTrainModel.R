source("AssociationRuleMiningAprioriUtils.R")
library(arules)

#reading dataset 
associationRuleMiningAprioriDataset = importAssociationRuleMiningAprioriDataset("Market_Basket_Optimisation.csv")

set.seed(1234)

# Fitting AssociationRuleMiningApriori to dataset
associationRuleMiningAprioriRules = apriori(data = associationRuleMiningAprioriDataset, parameter = list(support =0.004, confidence = 0.2))

#saving AssociationRuleMiningApriori rules
saveAssociationRuleMiningAprioriRules(associationRuleMiningAprioriRules)

#when you the apriori model to train on the sparx dataset, the following output will come

# Loading required package: Matrix
# 
# Attaching package: 'arules'
# 
# The following objects are masked from 'package:base':
#   
#   abbreviate, write
# 
# distribution of transactions with duplicates:
#   1
# 5
# Apriori
# 
# Parameter specification:
#   confidence minval smax arem  aval originalSupport maxtime support minlen
# 0.2    0.1    1 none FALSE            TRUE       5   0.004      1
# maxlen target   ext
# 10  rules FALSE
# 
# Algorithmic control:
#   filter tree heap memopt load sort verbose
# 0.1 TRUE TRUE  FALSE TRUE    2    TRUE
# 
# Absolute minimum support count: 30
# 
# set item appearances ...[0 item(s)] done [0.00s].
# set transactions ...[119 item(s), 7501 transaction(s)] done [0.01s].
# sorting and recoding items ... [114 item(s)] done [0.00s].
# creating transaction tree ... done [0.00s].
# checking subsets of size 1 2 3 4 done [0.01s].
# writing ... [811 rule(s)] done [0.00s].
# creating S4 object  ... done [0.00s].
