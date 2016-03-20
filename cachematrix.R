 ## Put comments here that give an overall description of what your
## functions do

## store the matrix and the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    cached_matrix <- x
    inverse_of_matrix <- NULL
    set_matrix <- function(input_martix) {
        cached_matrix <<- input_martix
        inverse_of_matrix <<- NULL
    }
    get_matrix <- function() {
        return(cached_matrix)
    }
    set_inverse_matrix <- function(inverse_matrix) {
        inverse_of_matrix <<- inverse_matrix
    }
    get_inverse_matrix <- function(){
        return(inverse_of_matrix)
    }
    func_list = list(set_matrix = set_matrix, get_matrix = get_matrix,set_inverse_matrix = set_inverse_matrix
         ,get_inverse_matrix = get_inverse_matrix)
    return(func_list)
}


## get the cached inverse matrix,if it doesn`t have the cache inverse matrix
## caculate the result and store it though the above func

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverse_of_matrix <- x$get_inverse_matrix()
    if (!is.null(inverse_of_matrix)){
        message('get the cached inverse matrix')
        return(inverse_of_matrix)
    }
    data_of_matrix <- x$get_matrix()
    inverse_matrix <- solve(data_of_matrix)
    x$set_inverse_matrix(inverse_matrix)
    return(inverse_matrix)
}
