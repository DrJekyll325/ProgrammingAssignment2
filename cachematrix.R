##	R Programming - Assignment 2
##	Create makeCacheMatrix and solveMatrix functions


##	makeCacheMatrix creates a list containing functions to set and
##	get a matrix and set and get its inverse

makeCacheMatrix <- function(x = matrix())
{
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




##	cacheSolve returns the inverse of a matrix from the cache if it exists,
##	otherwise it calculates the inverse and sets the value in the cache

cacheSolve <- function(x, ...)
{
	m <- x$getInverse()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- mean(data, ...)
	x$setInverse(m)
	m
}
