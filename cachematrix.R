## The following two functions is used for caching matrix inverse operrations.
## 2014-04-24

## makeCacheMatrix function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
    x <<- y
    m <<- NULL
  }
  # get/set function for matrix
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
        
    ## Checks if cached invserse matrix exists and returns if already available
    m <- x$getMatrix()
    if(!is.null(m)) {
      message("getting invsersed cached Matrix")
      return(m)
    }
    ## Storing inverse of cached matrix
    ## The solve funcion inverts a given matrix
    data <- x$getMatrix()
    m <- solve(data, ...)
    x$setMatrix(m)
    m
  
}
