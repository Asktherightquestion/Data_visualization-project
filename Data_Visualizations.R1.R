# ==============================================================================
# 1. SETUP AND DATA LOADING
# ==============================================================================
library(ggplot2)

# Load the data (Make sure the path is correct for your machine)
# If you are on a different computer, you may need to update this path.
athletes <- read.csv("C:/Users/btsho/Desktop/School/2025 SU MDS-631/athletes.csv")

# Quick check of the data
names(athletes)
head(athletes, n = 3)
str(athletes)

# ==============================================================================
# 2. GGPLOT2 BOXPLOT 
# ==============================================================================

boxplot_gg <- ggplot(athletes, aes(x = sport, y = ht)) + 
  geom_boxplot() + 
  labs(title = "Boxplot of Height by Sport", x = "Sport", y = "Height (cm)") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

print(boxplot_gg)
ggsave("boxplot.png", boxplot_gg, width = 8)

# ==============================================================================
# 3. BASE R PLOTS
# ==============================================================================

# Basic Boxplot for Hemoglobin (hg)
boxplot(athletes$hg, 
        main = "Boxplot of Hemoglobin", 
        ylab = "Hemoglobin")

# Styled Boxplot
boxplot(athletes$hg, 
        main = toupper("Boxplot of Hemoglobin concentration"), 
        ylab = "Hemoglobin concentration", 
        col = "red")

# Histogram
# Fix: Removed the double comma ', ,'
hist(athletes$hg, 
     xlab = "Hemoglobin concentration", 
     probability = TRUE, 
     main = "Histogram of Hemoglobin concentration")

# Density Plot
d <- density(athletes$hg)
plot(d, main = "Kernel density of Hemoglobin concentration", xlab = "Hemoglobin concentration")
polygon(d, col = "red", border = "blue")

# ==============================================================================
# 4. CATEGORICAL DATA PLOTS (Sport & Sex)
# ==============================================================================

# Frequency Table
sport_counts <- table(athletes$sport)
print(sport_counts)

# Vertical Bar Plot
barplot(sport_counts, 
        main = "Count of participants in different sports", 
        xlab = "Sports", 
        ylab = "Count", 
        border = "red", 
        col = "blue", 
        density = 10,
        las = 2) # las=2 rotates x-axis labels so they don't overlap

# Horizontal Bar Plot
barplot(sport_counts, 
        main = "Count of participants in different sports", 
        xlab = "Count", 
        ylab = "Sports", 
        col = "darkred", 
        horiz = TRUE,
        las = 1)

# Pie Chart
pie(sport_counts, labels = levels(factor(athletes$sport)))

# ==============================================================================
# 5. MULTIVARIATE ANALYSIS (Sex vs Sport)
# ==============================================================================

# Subset data safely using column names instead of numbers
sex_vs_sport_data <- athletes[, c("sex", "sport")]
table_sex_sport <- table(sex_vs_sport_data)
print(table_sex_sport)

# Alternative cross-tabulation
xtabs(~ athletes$sex + athletes$sport) 

# Stacked Bar Plot
barplot(table_sex_sport,
        main = "Sports Participation Distribution by Sex",
        xlab = "Sport",
        col = c("red", "green"),
        las = 2 # Rotates labels
)
legend("topleft",
       c("Female", "Male"),
       fill = c("red", "green")
)

# Side-by-Side Bar Plot
barplot(table_sex_sport,
        main = "Sports Participation Distribution by Sex",
        xlab = "Sport",
        col = c("red", "green"),
        beside = TRUE, # Fix: Removed extra space
        las = 2
) 
legend("topleft",
       c("Female", "Male"),
       fill = c("red", "green")
)

# ==============================================================================
# 6. SCATTER PLOT (Weight vs Height)
# ==============================================================================

# Fix: Completed the code using 'wt' and 'ht' columns
plot(wt ~ ht, data = athletes,
     xlab = "Height (cm)", 
     ylab = "Weight (kg)",
     main = "Scatter Plot of Weight vs Height",
     pch = 19,       # Solid circles
     col = "blue")

