# Install and load tidyverse packages
install.packages("tidyverse")
library(tidyverse)

# Load penguin data from penguin_data.txt
read.table("data/penguin_data.txt", header = T)
glimpse(penguins)

# Run a linear regression on the penguin data
penguinLm <- lm(body_mass ~ flipper_len, data = penguins)
summary(penguinLm)

# Save figure of the last plot ran 
ggsave("figs/1_flipper_bodymass_regression.png")

# Create a subset of the data to look at sex
penguinFemale <- subset(penguins, sex == "female")

# Save the edited data set
write_tsv(penguinFemale, "results/1_penguin_female_only.txt")

# Comment for second commit
# Comment for Github functionality test

#WELLLLLLLLLLLLL yeehaw 
