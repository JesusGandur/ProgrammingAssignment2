## This file has a pair of functions "makeCacheMatrix" & "cacheSolve"
## that cache the inverse of a matrix. This excercise belongs to the
## program assginment 2 of the course R programming of the Data Science
## Specialization


## Through this funcion the user of the code would be able to set or get
## the matrix of what the inverse is needed

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## Through this function the code will get the inverse of the matrxi previously
## established by the user

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
