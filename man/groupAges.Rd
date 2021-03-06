% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{groupAges}
\alias{groupAges}
\title{group single ages into equal age groups of arbitrary width}
\usage{
groupAges(Value, Age = 1:length(Value) - 1, N = 5, shiftdown = 0, AgeN)
}
\arguments{
\item{Value}{numeric vector of single age counts}

\item{Age}{integer vector of lower bounds of single age groups}

\item{N}{integer. Default 5. The desired width of resulting age groups}

\item{shiftdown}{integer. Default 0. Optionally shift age groupings down by single ages}

\item{AgeN}{optional integer vector, otherwise calculated using \code{calcAgeN()}}
}
\value{
vector of counts in N-year age groups
}
\description{
This can be useful to check constrained sums, or as an intermediate step for smoothing.
}
\details{
If you shift the groupings, then the first age groups may have a negative lower bound 
(for example of -5). These counts would be discarded for the osculatory version of Sprague smoothing,
for example, but they are preserved in this function. The important thing to know is that if you shift 
 the groups, the first and last groups won't be N years wide. For example if \code{shiftdown} is 1, the first age group is 4-ages wide. The ages themselves are not returned, 
but they are the name attribute of the output count vector. Note this will also correctly group abridged ages
into equal 5-year age groups if the \code{Age} argument is explicitly given.
}
\examples{
India1991males <- c(9544406,7471790,11590109,11881844,11872503,12968350,11993151,10033918
		,14312222,8111523,15311047,6861510,13305117,7454575,9015381,10325432,
9055588,5519173,12546779,4784102,13365429,4630254,9595545,4727963
		,5195032,15061479,5467392,4011539,8033850,1972327,17396266,1647397,
6539557,2233521,2101024,16768198,3211834,1923169,4472854,1182245
		,15874081,1017752,3673865,1247304,1029243,12619050,1499847,1250321,
2862148,723195,12396632,733501,2186678,777379,810700,7298270
		,1116032,650402,1465209,411834,9478824,429296,1190060,446290,362767,
4998209,388753,334629,593906,178133,4560342,179460
		,481230,159087,155831,1606147,166763,93569,182238,53567,1715697,
127486,150782,52332,48664,456387,46978,34448
		,44015,19172,329149,48004,28574,9200,7003,75195,13140,5889,18915,21221,72373)
Age <- 0:100
groupAges(India1991males, N = 5)
groupAges(India1991males, N = 5, shiftdown = 1)
groupAges(India1991males, N = 5, shiftdown = 2)
groupAges(India1991males, N = 5, shiftdown = 3)
groupAges(India1991males, N = 5, shiftdown = 4)
}
