//Transalting Fizz Buzz from Ruby to Javescript!

//The ever famous Fizz Buzz quesiton. I will be going from Ruby to Javascript and we can look at the simliarites and differences.


//We will need a loop to loop through bunch of integers
//we will use modulous to compare if something it divisible
//use if and than statements to compare each condition




//Ruby Fizz Buzz


def fizzbuzz(num)
  1.upto(num).each do |x|
    if x%3 == 0 && x%5 == 0
      puts "fizzbuzz"
    elsif x % 5 == 0
      puts "buzz"
    elsif x % 3 == 0
      puts "fizz"
    else
      puts x
    end
  end
end

//Javascript FizzBuzz But in simliar fashion!


for (var i=1; i <= 20; i++) //simliar to 1.upto(num).each do x loop
{
    if (i % 15 == 0) //we have our first if statement
        console.log("FizzBuzz");
    else if (i % 3 == 0) // then our second else if statement
        console.log("Fizz");
    else if (i % 5 == 0)
        console.log("Buzz");
    else
        console.log(i); //console.log acts just like puts in Ruby



//It is a simple problem but as you can see how simliar the method can be for this solution!









/*
What concepts did you solidify in working on this challenge?
How loops are done and made in both languages.

What was the most difficult part of this challenge?
Not too difficult, I wanted to show how simliar some of the languages are and how the problems can be soloved in very simliar patterns.
Did you solve the problem in a new way this time?
Nope it was almost in the same exact way.

Was your pseudocode different from the Ruby version? What was the same and what was different?

Nope

*/