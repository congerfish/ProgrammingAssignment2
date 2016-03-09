## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## original matrix will be instored in x
## inverted matrix will be instored in mi

makeCacheMatrix <- function(x = matrix()) {
  mi <- NULL
  
  setMatrix <- function(m){
    x <<- m
    mi <<- NULL
  }
  
  getMatrix <- function() x
  
  getInvert <- function() mi

  setInvert <- function(invert) mi <<- invert
  
  list(setMatrix = setMatrix,
       getMatrix = getMatrix,
       setInvert = setInvert,
       getInvert = getInvert)
}


## Write a short comment describing this function
## check if matrix has been inverted before first
## if true, return the inverted matrix directly
## if false, inverse the matrix, store it in x, and return it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mi <- x$getInvert()
  if(!is.null(mi)){
    message("getting inverse matrix")
    return (mi)
  }
  m <- x$getMatrix()
  mi <- solve(m)
  x$setInvert(mi)
  mi
}
