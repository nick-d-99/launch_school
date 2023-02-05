When programming, brain is bogged down thinking of syntax instead of logic and problem solving

pseudo code takes away the syntax and abstracts the problem to devote all your focus towards logic and problem solving

keyword 	meaning
START 	start of the program
SET 	sets a variable we can use for later
GET 	retrieve input from user
PRINT 	displays output to user
READ 	retrieve value from variable
IF / ELSE IF / ELSE 	show conditional branches in logic
WHILE 	show looping logic
END 	end of the program

For example, write out pseudo-code (both casual and formal) that does the following:

    a method that returns the sum of two integers
    
    a method that takes an array of strings, and returns a string that is all those strings concatenated together
    
    a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. For instance:

  every_other([1,4,7,2,5]) # => [1,7,5]

    a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.
    
    a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. For instance:

  merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]

    You may assume that both array arguments have the same number of elements. 

- a method that returns the sum of two integers:
  
  given 2 integers, add them, return result


- a method that takes an array of strings, and returns a string that is all those strings concatenated together:
  given an array of strings
  
  set the result as an empty string
  
  iterate through array of string parameter,
  
  concatenate current string to the result empty string
  
  continue until end of string array
  
  return result array


- a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. For instance:

every_other([1,4,7,2,5]) # => [1,7,5]\

  given an array of integers
  
  initialize empty result array that will be returned

  set counter to 0
  
  set a while loop that breaks when counter equates to or is larger than the length of the input array of integers

  add the integer in the input array at the index of counter's current value

  increase counter by 2 (instead of by 1 which is typical)

  return result array


- a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.

  given a character and a string

  set character counter to 0

  set index counter to 0

  create a loop that breaks when character counter is equal to 3 or if index counter is equal to or greater than the length of the string

  iterate through given string character by character

  at each character check if the current character is equal to the given character

  if the current character is equal to the given character, increment the character counter by 1
  else continue on to next character

  after each character increment index counter

  if the character counter reaches 3, return the current index counter
  else return nil


- a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. For instance:
 
  merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]

You may assume that both array arguments have the same number of elements.

  given two arrays of numbers

  initialize an empty results array to return at the end

  set counter to 0

  create loop that breaks when counter is equal to the sum of both given array's lengths

  if counter mod 2 is 0, push the first given array's next value into the result array
  else push the second given array's next value into the result array

  return result array