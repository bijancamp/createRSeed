createRSeed
===========

R program that creates a 4x4 seed matrix for use with `fungibleR` (Waller, 
2013, under review)

#### Description
Creates a 4x4 seed matrix for use with `fungibleR` with a predetermined 4x1 
Beta vector of standardized regression coefficients and a multiple R2 close to 
a predetermined R2.

#### Usage
`createRSeed(Beta = c(.1, .2, .3, .4), R2 = 0.3, tol = 0.5)`

#### Arguments
`Beta`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4 x 1 vector of standardized 
regression coefficients  
`R2`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;multiple coefficient of 
determination  
`tol`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tolerance for finding a 4x4 
correlation matrix that has a coefficient of  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;determination that is within 
|`tol`| units from the provided R2.

#### Returns
Returns `closestR`, an R matrix that has the closest coefficient of 
determination to the provided R2.

#### References
Waller, N.G. (2013, under review). Fungible Correlation Matrices: A New Tool 
for Evaluating Penalized Regression Models.
