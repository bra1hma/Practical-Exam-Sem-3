library(lpSolve)
costs <- matrix(c(4,5,1,
                  3,4,3,
                  6,2,8), nrow = 3, byrow = TRUE)
colnames(costs) <- c("Bangalore","West Bengal","Pune")
rownames(costs) <- c("Kochi","Vishakpatnam","Mumbai")
row.signs <- rep("<=",3)
row.rhs <- c(40,60,70)
col.signs <- rep(">=",3)
col.rhs <- c(70,40,60)
TotalCost <- lp.transport(costs,"min",row.signs,row.rhs,col.signs,col.rhs)
lp.transport(costs,"min",row.signs,row.rhs,col.signs,col.rhs)$solution
print(TotalCost)