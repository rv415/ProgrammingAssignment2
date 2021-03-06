## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Basically I took the example function and edited it to fit the matrix


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  # CREATE SPECIAL MATRIX
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  # ADD INVERSE MATRIX
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
## Basically I took the example function and edited it to fit the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setsolve(m)
  m
}
