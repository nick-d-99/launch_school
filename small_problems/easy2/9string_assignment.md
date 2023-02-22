Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

What does this code print out? Think about it for a moment before continuing.

Alice, Bob

Now, let's look at something a bit different:

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

What does this print out? Can you explain these results?

BOB, Bob

Wrong

Correct: BOB, BOB

This is because the save_name variable just points to the location of the name variable,
so even though the save_name variable was set before any augments were made to name, the variable is basically just a pointer.
