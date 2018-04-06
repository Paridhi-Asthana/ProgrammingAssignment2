## The code is meant to get inverse of an invertible matrix

## First function creates the base for getting inverse by creating a list of functions: set,get,setmean and getmean

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

## second function gets the inverse

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
