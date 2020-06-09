Feature: ChainPrinter
  In order to print out a number chain
  As a CLI
  I want to be as objective as possible

  Scenario Outline: Print output when input is 20
    When I run `customer_test perform --integer <max_number>`
    Then the output should contain "<output display>"

  Examples:
  | max_number | output display |
  | 1          | 1 |
  | 10         | 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz |
  | 20         | 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16, 17, Fizz, 19, Buzz |
  | abc        | |
