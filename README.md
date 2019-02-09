# README

# DAMLAG (Elcinema) Challange
Goal: Implement a stack class and calculate maximum value and average on large number of data.

Task Requirements:
- 1- Create a class "Stack" that exposes the following characteristics:
 >- A public method called "push" that receives an unsigned integer number as parameter,
    this method should store the numbers internally while keeping the order they where
    pushed.
 >- A public method called "pop" that returns the previously "pushed" numbers in reversed
    order (FILO).
 >- A public method called "max" which returns the highest number of the numbers in the
    stack.
 >- The class "Stack" will receive many "pushed" numbers (let's say 10 million). The number of
    calls to "max" will be by magnitude than "push" or "pop" calls. Try to make "max" as fast as
    possible.

- 2- Create a class "Extras" which includes:
>- all the methods of "Stack" class.
>- It should expose a method called "mean" which should return the mean value (average value)
  of the numbers in the stack. Again, make it as fast as possible.

# Prerequisites:
* Ruby version '2.5.1'

# Test Classes:
- Open your terminal.
- Change directory to project directory.
- Run `ruby test_stack.rb`

# Testing with RSpec:
- Open your terminal.
- Change directory to project directory.
- Run `gem install rspec`
- Run `gem install rspec-its`
- Run `rspec -f d`
