createRSeed
===========

Creates a 4 × 4 seed matrix for use with `fungibleR` (Waller, 2013, under review).

#### Description
Creates a 4 × 4 seed matrix for use with `fungibleR` with a predetermined 4 × 1 Beta vector of standardized regression coefficients and a multiple coefficient of determination 𝑅² that is close to a predetermined 𝑅².

#### Usage
`createRSeed(Beta = c(.1, .2, .3, .4), R2 = 0.3, tol = 0.5)`

#### Arguments
| Argument | Description                                                                       |
| -------- | --------------------------------------------------------------------------------- |
| `Beta`   | 4 × 1 vector of standardized regression coefficients.                             |
| `R2`     | multiple coefficient of determination.                                            |
| `tol`    | tolerance for finding a 4 × 4 correlation matrix that has a coefficient of determination that is within \|`tol`\| units from the provided 𝑅². |

#### Value
Returns `closestR`, an 𝐑 matrix that has the closest coefficient of determination to the provided 𝑅².

#### References
Waller, N.G. (2013, under review). Fungible Correlation Matrices: A New Tool for Evaluating Penalized Regression Models.
