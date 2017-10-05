## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        in1 <- NULL
        set <- function(y) {
                x <<- y
                in1 <<- NULL
        }
        get <- function() x
        setinv <- function(inv) in1 <<- inv
        getinv <- function() in1
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## Write a short comment describing this function
# Caches the inverse of a matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        in1 <- x$getinv()
        if(!is.null(in1)) {
                message("getting cached data")
                return(in1)
        }
        data <- x$get()
        in1 <- inv(data, ...)
        x$setinv(in1)
        in1
}
