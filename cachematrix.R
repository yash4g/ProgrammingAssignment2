## Put comments here that give an overall description of what your
## functions do

##@YG 
##square invertible matrix
##retruns list of four funciton
	##set the matrix
	##get the matrix
	##set inverse matrix
	##get inverse matrix
	##list of for funcitons
makeCacheMatrix <- function(x = matrix()) {

  inversematrix <- NULL
  set <- function(y) {
    x <<- y
    inversematrix <<- NULL
  }
  get <- function()
    x
  setinversematrix <- function(inv) {
    inversematrix <<- inv
  }
  getinversematrix <- function()
    inversematrix
  ##return list fo four funcitons
  list(
    set = set, get = get, setinversematrix = setinversematrix, getinversematrix = getinversematrix
  )
}

##@YG 
##accepts output of makeCacheMatrix function
##return inverse of matrix from makeCacheMatrix function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		 inverseX <- x$getinversematrix()
  # if inverse already exists retrun from cache
  if (!is.null(inverseX)) {
    print("calling from cach")
    
    return (inverseX)
  }
  # otherwise continue to calculate inverse value, set it to inverse function and return same
  data <- x$get()
  inverseX <- solve(data)
  x$setinversematrix(inverseX)
  inverseX
}
