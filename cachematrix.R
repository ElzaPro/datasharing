## The script inverses a matrix and stores it 
## in an evironement for further refferences

## makeCacheMatrix caches the inversed matrix

makeCacheMatrix <- function(x=matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<-inverse
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}

}


## Returened the inversed matrix
## if does not exist that created and cached that

cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  if ( ! is.null(m)) {
    print("getting cached data")
    return(m)
  }
  
  ## Return a matrix that is the inverse of 'x'  
  m <- solve(x$get())
  x$setInverse(m)
  m
}
