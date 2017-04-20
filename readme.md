## Bank
#### Practise tech test

Practise tech test to simulate the workings of a bank with the following specifications:

#### Requirements

You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

#### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

I chose Ruby for this tech test as I felt its elegance and simplicity would fit the specifications well. The project is TDD'd with RSpec, and the user stories are of my own devising based on the acceptance criteria. This project inspired an internal debate on the pros and cons of TDD versus BDD, as I wanted to use private methods to better encapsulate the programme but found that it would require me to limit my testing to focus on the behaviour of the methods as opposed to the methods themselves. In the end I slightly sacrificed encapsulation for greater unit test coverage as the description for the tech test was to 'practice your OO design and TDD skills'.

```
As a user
So that I can receive my money
I want to be able to withdraw from my account

As a user
So that I can save my money
I want to be able to deposit into my account

As a user
So that I can see my account history
I want to be able to print a bank statement with a timestamp

As a banker
To protect my assets
I want to stop a user from withdrawing more than they have
```
