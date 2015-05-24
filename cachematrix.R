##	R Programming - Assignment 2
##	Create makeCacheMatrix and solveMatrix functions


##	makeCacheMatrix creates a list containing functions to set and
##	get a matrix and set and get its inverse

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL


	set <- function(y)
	{
		x <<- y
		i <<- NULL
	}


	get <- function()
	{
		x
	}


	setInverse <- function(solve)
	{
		i <<- solve
	}


	getInverse <- function()
	{
		i
	}


	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
