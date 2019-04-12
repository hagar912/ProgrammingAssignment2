## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv_x <<- NULL
    set <- function(y){
        x <<- y
        inv_X <<- null
    }
    get <- function() x
    setInverse <- function(inverse) inv_x <<- inverse
    getInverse <- function() inv 
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
            inv_x <- x$getInverse()
    if(!is.null(inv_x)){
        message(""Getting cached data."")
        return inv_x
    }
    data <- x$get()
    inv_x <- solve(data)
    x$setInverse(inv_x)
    inv_x
}
