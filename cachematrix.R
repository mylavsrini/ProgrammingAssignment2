## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  
  setinvmatx <- function(invmatx) m <<- invmatx
  
  getinvmatx <- function() m
  
  list(set = set, get = get, setinvmatx = setinvmatx, getinvmatx = getinvmatx)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getinvmatx()
  
  if(!is.null(inv)) {
        message("getting cached data")
    return(inv)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinvmatx(m)
  m
}
