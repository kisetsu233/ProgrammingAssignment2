## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ##set the metrix
  inv <- NULL
  
  set <- function(y){
    x <- y
    inv<- NULL
  }
  
  ##get the metrix
  get <- function() x
  ##set the inverse
  setinverse <- function(i) inv <- i
  ##get the inverse
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getmean()
  #check to see if the inverse have already been calculaed
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  #get the data, calculte inverse
  data <- x$get()
  inv <- solve(data, ...)
  #set value of the inverse in the cache
  x$setinverse(inv)
  
  return(inv)
}
