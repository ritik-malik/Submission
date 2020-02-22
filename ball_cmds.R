# importing the ballgown library
library(ballgown)

# setting the working directory
setwd('/home/michael/Desktop/G-Soc/Submission/ball_input')

# importing data of tablemaker using ballgown
bg_brain = ballgown(samples = 'output_brain/')
bg_liver = ballgown(samples = 'output_liver/')
bg_brain
bg_liver

# creating matrices for FPKM from texpr funtion
tx_brain = texpr(bg_brain, 'all')
tx_liver = texpr(bg_liver, 'all')

# writing the output to CSV files
write.csv(tx_brain ,"/home/michael/Desktop/G-Soc/Submission/tx_brain.csv", row.names = TRUE)
write.csv(tx_liver ,"/home/michael/Desktop/G-Soc/Submission/tx_liver.csv", row.names = TRUE)

# used "head -1001 tx_brain.csv > tx_brain_1000.csv" to get 1st 1000 lines output, use "cat tx_brain_1000.csv | wc -l" to verify the same.
# //ly for tx_liver.csv
