## This function create an object by makeCacheMatrix function,
## then the cacheSolve function can be used to get infomation 
## from the object. If required infomation not exists, the 
## cacheSolve funtion will generate that infomation and store
## in the object.

## The makeCacheMatrix function create an object which stores
## two attributs:
## x - a matrix
## inversion - the inverse of matrix x
## The object have four methods:
## setMatrix - set the value of x
## getMatrix - return matrix x
## setInversion - set the value of inversion
## getInversion - return inversion

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


## The cacheSolve function take an object created by makeCacheMatrix
## as argument and return the inverse of the matrix stored in the
## object.
## The function first check if the object already has the inversion
## data. If dose, just return that data, if dosen't the function
## will calculate the inverse of the matrix stored in the object and
## store the result in the object before return it.

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
