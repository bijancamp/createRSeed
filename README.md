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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4 x 1 vector of standardized regression  
**R2**  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;multiple coefficient of determination  
**tol**  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tolerance for finding a 4x4 correlation  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;matrix that has a coefficient of  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;determination that is within |tol| units  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;from the provided R2
