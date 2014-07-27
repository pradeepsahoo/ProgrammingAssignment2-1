## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## Initialize the inverse property
    i <- NULL
    
    ## Method to set the matrix
    set <- function( matrix ) {
        m <<- matrix
        i <<- NULL
    }
    
    ## Method the get the matrix
    get <- function() {
        ## Return the matrix
        m
    }
    
    ## Method to set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }
    
    ## Method to get the inverse of the matrix
    getInverse <- function() {
        ## Return the inverse property
        i
    }
    
    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
            s <- x$getsolve()
    if(!is.null(s)) {
        message("getting cached data")
        return(s)
    }
    data <- x$get()
    s <- solve(data, ...)
    x$setsolve(s)
    s
}
