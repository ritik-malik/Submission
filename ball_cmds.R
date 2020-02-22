library(ballgown)
setwd('/home/michael/Desktop/G-Soc/Submission/ball_input')

bg_brain = ballgown(samples = 'output_brain/')
bg_liver = ballgown(samples = 'output_liver/')
bg_brain
bg_liver

t_fpkm_brain = texpr(bg_brain, 'FPKM')
t_fpkm_liver = texpr(bg_liver, 'FPKM')

write.csv(t_fpkm_brain ,"/home/michael/Desktop/G-Soc/Submission/FPKM_brain.csv", row.names = FALSE)
write.csv(t_fpkm_liver ,"/home/michael/Desktop/G-Soc/Submission/FPKM_liver.csv", row.names = FALSE)

# used "head -1001 FPKM_brain.csv > FPKM_brain_1000.csv" to get 1st 1000 lines output, use "cat FPKM_brain_1000.csv | wc -l" to verify
# //ly for FPKM_liver.csv