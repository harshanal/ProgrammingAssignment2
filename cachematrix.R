## The following two functions is used for caching matrix inverse operrations.
## 2014-04-24

## makeCacheMatrix function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setMatrix <- function(Matrix) m <<- Matrix
  getMatrix <- function() m
  list(set = set, get = get,
       setMatrix = setMatrix,
       getMatrix = getMatrix)
}


##  The cacheSolve function computes the inverse of the special "matrix" returned by 
## `makeCacheMatrix` function. If the inverse has already been calculated, `cacheSolve` 
##  retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
