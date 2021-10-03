## The two functions cache the inverse of matrix
##Function that creates a matrix that can cache its inverse 


makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL

set <- function(m) {
  x <<- m
  inverse <<- NULL 
}

get <- function() x

set.inverse <- function(setinverse) inverse <<- set.inverse
get.inverse <- function() inverse
list(set = set, get = get, 
     set.inverse = set.inverse, 
     get.inverse = get.inverse)
}



## This function retrieve the inverse of the last one

cacheSolve <- function(cached, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- cached$get.inverse()
  if(!is.null(inverse)) {
    message ("inverse matric")
    return(inverse)
    raw <-cached$get()
    inverse <- solve(raw,...)
    
    inverse
    
  }
}
  

