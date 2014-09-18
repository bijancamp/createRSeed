#---------------------------------------------------------------#
# createRSeed
# Bijan Camp
# February 27, 2014
#
# Description:       : Creates a 4x4 seed matrix for use with
#                      fungibleR with a predetermined 4x1 Beta
#                      vector of standardized regression
#                      coefficients and a multiple R2 close to a
#                      predetermined R2.
#
# Arguments:
#       Beta         : 4x1 vector of standardized regression 
#                      coefficients
#       R2           : multiple coefficient of determination
#       tol          : tolerance for finding a 4x4 correlation
#                      matrix that has a coefficient of
#                      determination that is within |tol| units 
#                      from the provided R2
#
# Returns:
#       closestR     : R matrix that has the closest coefficient
#                      of determination to the provided R2
#---------------------------------------------------------------# 

## Needed for lowerTriangle function
library(gdata)

## Suggested defaults
Beta <- c(.1, .2, .3, .4)
R2 <- 0.3

## Main function
createRSeed <- function(Beta = c(.1, .2, .3, .4), R2 = 0.3, tol = 0.5) {
    ## Initiate storage variables
    R.matrix <- matrix(0, 100, 16)
    R2.vector <- numeric(100)

    ## Create 100 trial matrices to find a decent correlation matrix
    for (i in 1:100) {
        ## Generate correlation matrices until a matrix of R2 within
        ## |tol| units is found
        repeat{
            lowerTriangle.R <- c(1, runif(3, -1, 1), 1, runif(2, -1, 1), 1, runif(1, -1, 1), 1)
            A <- diag(4)
            lowerTriangle(A, diag = TRUE) <- lowerTriangle.R
            R <- A + t(A) - diag(diag(A))
            if (((R2 - abs(tol)) <= t(Beta) %*% R %*% Beta) & (t(Beta) %*% R %*% Beta <= (R2 + abs(tol))))
                ## Force positive semi-definiteness
                if (eigen(R)$values[ncol(R)] >= 0)
                    break
        }

        ## Store the found matrix and R2 coefficient
        R.matrix[i, ] <- as.vector(R)
        R2.vector[i] <- t(Beta) %*% matrix(R.matrix[i, ], 4, 4) %*% Beta
        cat("Found correlation matrix ", i, ".\n", sep = "")
    }

    ## Determine the matrix that has an R2 closest to the predetermined value
    closestR <- matrix(R.matrix[which.min(abs(R2.vector - R2)), ], nrow = 4, ncol = 4)
    
    ## Output
    closestR
}
