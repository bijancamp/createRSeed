createRSeed
===========

R program that creates a 4x4 seed matrix for use with fungibleR

## SYNOPSIS

createRSeed(Beta, R2, tol)

## ARGUMENTS

Beta: 4 x 1 vector of standardized regression
R2: multiple coefficient of determination
tol: tolerance for finding a 4x4 correlation matrix that has a coefficient of determination that is within |tol| units from the provided R2
