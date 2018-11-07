
dat <- data.frame(iris)

num_uniq <- integer( length(names(dat)) )

num_uniq <- integer( dim(dat)[2] )

for( j in seq_along(dat) ) {
  num_uniq[j] <- length( unique(dat[,j]) )
  
}

apply(dat, 2, function(x) length( unique(x)) )

list_uniq <- lapply(seq_along(dat), function(j) length( unique(dat[,j])  ) )
  
unlist(list_uniq)

sapply(seq_along(dat), function(j) length( unique(dat[,j])  ) )

list.of.samples <- replicate( 20, sample(1:100, size=10) , simplify=F )

vnames <- paste0("v", 1:10)

newlist <- c( list(vnames)  , list.of.samples )

computeMean <- function( x ) {
  ifelse( is.numeric(x), mean(x), "This is a string")
}

lapply( newlist, computeMean )

sapply( newlist, computeMean )
