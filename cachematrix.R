## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inversion <- NULL
  setMatrix <- function(y) {
    x <<- y
    inversion <<- NULL
  }
  getMatrix <- function() x
  setInversion <- function(i) invertion <<- i
  getInversion <- function() invertion
  list(setMatrix = setMatrix,
       getMatrix = getMatrix,
       setInversion = setInversion,
       getInversion = getInversion)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inversion <- x$getInversion()
  if(!is.null(inverion)) {
    message("getting cached data")
    return (inverion)
  }
  matrix <- x$getMatrix()
  invertion <- solve(matrix)
  x$setInversion(invertion)
  return(invertion)
}
