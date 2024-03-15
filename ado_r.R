# Buffon's Needle Simulation

# Parameters
numNeedles <- 100000    # Number of needles to simulate
needleLength <- 1     # Length of the needle
numLines <- 5         # Number of parallel lines
lineSpacing <- 1      # Spacing between parallel lines
boardWidth <- 2       # Width of the board

# Initialize variables
crossedLines <- rep(0, numLines)

# Simulate needles
for (i in 1:numNeedles) {
  midPoint <- runif(1, 0, boardWidth)
  angle <- runif(1, 0, pi)
  
  for (j in 1:numLines) {
    y <- j * lineSpacing
    distanceToLine <- min(midPoint, boardWidth - midPoint)
    
    if (distanceToLine <= 0.5 * needleLength * sin(angle)) {
      crossedLines[j] <- crossedLines[j] + 1
    }
  }
}

# Calculate the estimated probabilities
estimatedProbabilities <- crossedLines / numNeedles

# Calculate the theoretical probability
theoreticalProbability <- 2 * needleLength / (pi * lineSpacing)

# Display results
cat("Number of needles:", numNeedles, "\n")
for (i in 1:numLines) {
  cat("Estimated probability for line", i, ":", round(estimatedProbabilities[i], 4), "\n")
}
cat("Theoretical probability:", round(theoreticalProbability, 4), "\n")
