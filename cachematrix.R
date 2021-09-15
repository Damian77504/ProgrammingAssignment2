## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL                     ## assign inverse property
        set <- function( y ) {          ## define set function for the matrix
                x <<- y
                inv <<- NULL
        
        }
        get <- function() {x}            ## get the matrix
        set_invM <- function(inverse) {  ## set the inverse of matrix 
                inv <<- inverse}         ## assign inverse matrix to environment 
        get_invM <- function() {         ## get the inverse of matrix
                inv}                     ## return inverse matrix 
        list(set = set, get = get,       ## return the list of defined function
             set_invM = set_invM, 
             get_invM = get_invM)

        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {  
        ## Return a matrix that is the inverse of 'x'
        invM <- x$get_invM()          
        ## return the inverse if its set
        if(!is.null(invM)) {          
                message("getting cached data")
                return (invM)
        }
        
        mat <- x$get()           ## get matrix from the object
        invM <- solve(mat, ...)  ## solve the inverse using matrix multiplication
        x$set_invM(invM)         ## set the inverse to the object
        return(invM)             ## return the matrix

}






