Feature: ChainPrinter
  In order to print out a number chain
  As a CLI
  I want to be as objective as possible

  Scenario: Print output when input is 20
    When I run `customer_test perform --integer 20`
    Then the output should contain "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16, 17, Fizz, 19, Buzz"

