\name{@ANNOBJPREFIX@ARACYCENZYME}
\alias{@ANNOBJPREFIX@ARACYCENZYME}
\title{Map between Manufacturer IDs and Enzyme Names from ARACYC}
\description{ 
  @ANNOBJPREFIX@ARACYCENZYME is an R object that provides mappings between
  manufacturer identifiers and Enzyme Names from ARACYC. 
}
\details{
  Each manufacturer identifier maps to a named vector containing the
  Enzyme name for that gene according to the ARACYC database.  If this
  information is unknown, the vector will contain an \code{NA}.
    
  Mappings between probe identifiers and enzyme identifiers were obtained using files
  provided by: @ENZYMESOURCE@
}
\examples{
        x <- @ANNOBJPREFIX@ARACYCENZYME
        # Get the probe identifiers that are mapped to an Enzyme Name 
        mapped_probes <- mappedkeys(x)
        # Convert to a list
        xx <- as.list(x[mapped_probes])
        if(length(xx) > 0) {
          # Get the ENZYME name for the first five probes
          xx[1:5]
          # Get the first one
          xx[[1]]
        }
}
\keyword{datasets}

