KryptykFysh's Ruby Bank
=======================

This is my solution to rkcudjoe's Ruby Bank problem. 
(You can find more here: http://www.rkcudjoe.com/the-banking-system-part-1)

Where Am I At?
--------------

I've created tests and classes for both Banks and Accounts as ActiveRecord classes. The Transaction class 
has been created and has subclasses of Credit and Debit.

The package has been bundled as a gem, with an executable, 'ruby_bank' with a command parser. The command parser currently only responds to the commands 'list <class>', 'quit', and 'help' or '?'.

Hirb has been added to format output of ActiveRecord collections.

Test driving Yard documentation.

To Be Done
--------

+ Obviously the command parser needs to have the rest of the command suite built to allow creation of objects.

+ The Hirb output needs to have proper views implemented.

+ The command parser needs to allow a Bank/Account etc. to be selected and only display objects belonging to the selected object.