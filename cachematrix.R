## Two functions, that together calculate the inverse of a matrix,
## stores the result in the cache, and return the cached inverse to
## avoid re-calculating a process that has already been done.

## The function makeCacheMatrix() takes a matrix and stores it in the cache,
## calculates the inverse, and stores the inverse in the cache.

makeCacheMatrix <- function(x = matrix()) {
  y <<- NULL
  x1 <<- x
  y <<- solve(x)
}


## The function cacheSolve() takes a matrix, checks to see whether 
## its inverse is in the cache already and, if so, returns the cached inverse, 
## otherwise runs the function makeCacheMatrix() on the input matrix,
## which caches the inverse, and then returns the cached inverse.

cacheSolve <- function(x, ...) {
  if(!is.null(y)){
    message("getting cached data")
  } else {y <<- makeCacheMatrix(x)
  }
  return(y)
}
