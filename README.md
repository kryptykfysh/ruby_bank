KryptykFysh's Ruby Bank
=======================

This is my solution to rkcudjoe's Ruby Bank problem. 
(You can find more here: http://www.rkcudjoe.com/the-banking-system-part-1)

Where Am I At?
--------------

I've created tests and classes for both Banks and Accounts, but not yet added any of the persistance requested, as that is addressed in Concerns, below.

Concerns
--------

+ The spec says the deposit and withdraw methods should be on the Bank rather than the Account class, where I feel they belong.

+ The tables shown in the spec would make me want to create a Transaction class, or possibly separate Deposit and Withdrawal classes as each transaction should be logged, rather than just running totals.

+ The method of persistance is unclear. The spec calls for records to be kept in a file, bank_manager.rb. I'd be tempted to either Marshal data and dump to a yaml file or use ActiveRecord for a database persistance layer. Why the file must be .rb (indicating something possibly executable), is unclear.