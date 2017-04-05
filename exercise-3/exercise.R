# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c('blue','red','yellow','green','orange','purple')

# Use the `sample` function to select a single marble
sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess) {
  answer = sample(marbles, 1)
  if (guess == answer)
    return ('Correct!')
  else
    return (paste('Nice try, the answer is',answer))
}

# Play the marble game!
MarbleGame('blue')

# Bonus: Play the marble game until you win, keeping track of how many tries you take
win <- FALSE
tries <- 0
while (!win) {
  if (MarbleGame('blue') == 'Correct!')
    win <- TRUE
  tries <- tries + 1
}
print(tries)

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
tries <- 0
correct <- 0
for (i in 1:1000) {
  tries <- tries + 1
  if (MarbleGame('blue') == 'Correct!')
    correct <- correct + 1
}
print(correct / tries)