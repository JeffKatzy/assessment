1. Implement merge sort. What's the bigO and why?
  - Refer to mergesort.rb
  - The bigO is O(n log n)
    - As the subproblems get smaller, the number of subproblems doubles at each "level" of the recursion, but the merging time halves. The doubling and halving cancel each other out.
    - I'm still a little unclear about all things bigO so
    I'm spending time trying to understand it.


2. Write a method to reverse a string. (Hint: You cannot use reverse method)
  - Refer to reverse.js

3. Write a method to see if string is a palindrome
  - Refer to palindrome.js

4. Given the root node in a sorted binary search tree, how do you find the smallest element?
  - Keep going to the left until you run out of nodes
