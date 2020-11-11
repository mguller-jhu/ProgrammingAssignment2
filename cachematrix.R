## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Calculates the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {

         i <- NULL

set <- function(matrix) {
        
        x <<- matrix
        i <<- NULL
        
}

get <- function() {x}

setinverse <- function(inverse) {i <<- inverse}

getinverse <- function() {i}

list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}

## Write a short comment describing this function
## A function that creates a special "matrix" object that can cache its inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...) 
        x$setinverse(m)
        
        m
}
