makeCacheMatrix <- function( m = matrix() ) {

## Initialize the inverse and set the matrix
    i <- NULL
set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }
   
## this mehtod will write/get the matrix
## given the input for the matrix m
    get <- function() {
    	## Return the matrix
    	m
    }
## this fumction will set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }
## this fumction will get the inverse of the matrix
    getInverse <- function() {
        ## Back the inverse property
        i
    }
## list of methods used is formed
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


 
## This function computes the inverse of the matrix returned by makeCacheMatrix 
   
cacheSolve <- function(x, ...) {
## matrix m is returned by makeCacheMatrix 
m <- x$getInverse()
 if( !is.null(m) ) {
       message("getting cached data")
       return(m)
## return matix if there in no null data in it
    }
## matrix multiplication
    m <- solve(data) %*% data
## Set the inverse to the object
    x$setInverse(m)
## again back to matrix
    m
}
