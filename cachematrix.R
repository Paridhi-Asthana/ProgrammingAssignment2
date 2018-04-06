## Trying to get inverse of an invertible matrix
## This function creates a special "matrix" object that can cache its inverse. 

makeCacheMatrix <- function(x = matrix()) {
        I<-NULL
        set <-function(x) {
                x<<-y
                I<<-NULL
        }
        get <-function() {
                x
        }
        setinverse <- function(inverse) {
                I<<-inverse
        }
        getinverse <- function() {
                I
        }
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## this function actually calculates the inverse (first checks if it is already calculated)

cacheSolve <- function(x, ...) {
        I=x$getinverse()
        if(!is.null(I)) {
                message("Getting inverse")
                return(I)
        }
        x=x$get()
        I<-solve(x)
        return(I)
}
