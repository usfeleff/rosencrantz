# rosencrantz
## lis4370_final project_R rosencrantz package

please see the accomponaying blog post at: https://thestorythusr.wordpress.com/2021/04/26/r-rosencrantz-package/


The rosencrantz package is a suite of functions for simulating various types of 
classical probability experiments generally encountered in an undergraduate 
probability course.

Such experiments include those involving flipping coins, rolling dice, drawing
cards, etc.

The package is intended as an educational tool and, as such, does not directly
or mathematically calculate the probabilities, masses, expectations, or any 
of the various other mathematical constructs related to these experiments.
Instead, it provides a set of tools by which you could determine these things
experimentally.

***

Of the various functions and experiments the most interesting is the "rosencrantz"
by which the package gets its name.

A rosencrantz is a fictitious/invented unit of probability that expresses how
many times a coin would have to be flipped and land the same way to equal 
particular odds. 

For example, if your odds of winning the lottert are 1 in a 
million, the rosencrantzEquiv function will tell you (correctly) that this is
roughly the same as having a coin flip turn up the same way 20 times in a row.

You can then use the rosencrantzTest function to actually flip the coin for you
and find out how many flips it took before it was succesful.

(The unit's name is taken from the start of Tom Stoppard's play 
"Rosencrantz and Guildenstern are Dead" in which a coin has been flipped and
landed on heads 92 flips in a row. Roughly 1 in 10^27. You should not attempt
to run such an experiment, as you will be waiting a very, very long time for it
to finish, assuming your system does not crash altogether.) 

***

Experiment Type | Status
--------------- | ----------------
rosencrantz     | implemented
dice            | implemented
coins           | implemented
covers(lottery) | in progress
cards           | next
bingo           | next
darts           | future
balls and urns  | future
monte carlo     | future
roulette        | future
monty hall      | future
