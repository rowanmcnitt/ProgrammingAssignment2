## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(matObj = matrix()) #Function taking a square matrix
{
  matInvserse = NULL
  
  setValues = function(matEnv) #Set 'in - environment' values for the matrix and inverse of the matrix
  {
    matInverse <<- NULL
    matObj <<- matEnv
  }
  getValues = function() matObj #Function to retrieve the function if it exists
  matInverseA = function(inverse) matInvserse <<- matInverseA #Assign the inverse of the matrix
  matInverseR = function() matInverse #Retrieve the matrix inverse
  list(setValues = setValues, getValues = getValues, matInverseA = matInverseA, matInverseR = matInverseR) #List of all values in the function
}


## Write a short comment describing this function

cacheSolve <- function(mObj, ...) #Function accepting square matrix
{
  inverse = mObj$matInverseR #Retrieve the inverse of the matrix from the 'makeCacheMatrix' function
  if(!is.null(inverse)) #Checks if the inverse of the matrix is assigned
  {
    return(inverse) #If so, return the value
  }
  mat.Obj = mObj$getValues() #If not assign the value
  inverse = solve(mat.Obj, ...) #|
  mObj$matInverseA(inverse) # <--*
  return(inverse) #Returns the inverse of the matrix
}
