createRSeed
===========

R program that creates a 4x4 seed matrix for use with fungibleR

### DESCRIPTION
Creates a 4x4 seed matrix for use with 
fungibleR with a predetermined 4x1 Beta 
vector of standardized regression 
coefficients and a multiple R2 close to a 
predetermined R2.

### USAGE

createRSeed(Beta = c(.1, .2, .3, .4), R2 = 0.3, tol = 0.5)

### ARGUMENTS

**Beta**
        4 x 1 vector of standardized regression
**R2**
        multiple coefficient of determination
**tol**
        tolerance for finding a 4x4 correlation matrix that has a coefficient of determination that is within |tol| units from the provided R2
