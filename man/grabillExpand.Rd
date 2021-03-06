% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Grabill.R
\name{grabillExpand}
\alias{grabillExpand}
\title{create the Grabill coefficient matrix}
\usage{
grabillExpand(popmat, OAG = TRUE)
}
\arguments{
\item{popmat}{numeric matrix of age-period population counts in 5-year age groups}

\item{OAG}{logical (default \code{TRUE}. Is the final age group open?}
}
\description{
The resulting coefficient matrix is based on the number of rows in \code{popmat}
where we assume that each row of data is a 5-year age group and the final row is an open age group
to be preserved as such.
}
\details{
The \code{popmat} matrix is really just a placeholder in this case. This function is 
a utility called by the Grabill family of functions, where it is most convenient to just pass
in the same matrix being used in those calcs to determine the layout of the coefficient matrix.
Note that these coefficients do not constrain population counts to their year totals. This function 
is called by \code{grabill()}, which ensures matching marginals by 1) blending boundary ages 
into the Sprague estimated population, and 2) a second constraint on the middle age groups to enforce
matching sums.
}
\examples{
p5 <- structure(c(54170, 44775, 42142, 38464, 34406, 30386, 26933, 
				23481, 20602, 16489, 14248, 9928, 8490, 4801, 3599, 2048, 941, 
				326, 80, 17, 0, 57424, 44475, 41752, 39628, 34757, 30605, 27183, 
				23792, 20724, 17056, 14059, 10585, 8103, 5306, 3367, 2040, 963, 
				315, 80, 16, 1, 60272, 44780, 41804, 40229, 35155, 30978, 27456, 
				24097, 20873, 17546, 13990, 11146, 7841, 5738, 3184, 2062, 961, 
				311, 80, 15, 1, 62727, 45681, 42101, 40474, 35599, 31439, 27758, 
				24396, 21055, 17958, 14046, 11589, 7731, 6060, 3086, 2083, 949, 
				312, 79, 14, 1, 64816, 47137, 42508, 40532, 36083, 31940, 28092, 
				24693, 21274, 18299, 14223, 11906, 7785, 6255, 3090, 2084, 938, 
				316, 80, 14, 2), 
		.Dim = c(21L, 5L), 
		.Dimnames = list(seq(0,100,by=5), 1950:1954))
grabillExpand(p5, OAG = TRUE)
grabillExpand(p5, OAG = FALSE)
}
\references{
\insertRef{shryock1973methods}{DemoTools}
}
