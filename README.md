# Data_visualization-project
Github assignment
📊 Athletes Data Analysis
📌 Project Overview
This project performs an exploratory data analysis (EDA) on a dataset of 202 athletes across various sports. Using R and ggplot2, we investigate the physical characteristics (height, weight, body composition) and blood metrics (hemoglobin) of athletes to identify patterns between different sports and genders.

🛠️ Technologies Used
Language: R

Libraries: ggplot2 (Visualization), base R graphics

Data Source: athletes.csv

📂 Dataset Description
The dataset contains 202 records with the following key variables:

rcc, wcc, hc, hg, ferr: Blood composition metrics (e.g., Hemoglobin).

bmi, ssf, pcBfat, lbm: Body composition metrics (BMI, Body Fat %).

ht, wt: Height (cm) and Weight (kg).

sex: Gender (f/m).

sport: The sport associated with the athlete (e.g., Basketball, Water Polo, Gymnastics).

🔍 Key Findings & Analysis
1. Height Distribution by Sport
Visualization: Boxplot (geom_boxplot)

Tallest Athletes: Basketball (B_Ball) and Water Polo (W_Polo) players are the tallest groups on average, with mean heights of 188.7 cm and 188.2 cm, respectively.

Shortest Athletes: Gymnasts (Gym) are significantly shorter than other groups, with a mean height of 153.4 cm.

Spread: Tennis shows a wide variation in height (high standard deviation), indicating that height is less of a strict requirement compared to sports like Basketball.

2. Weight vs. Height Correlation
Visualization: Scatter Plot (plot)

There is a strong positive correlation (r ≈ 0.78) between height and weight across all athletes.

As expected, taller athletes tend to be heavier, but outliers exist (e.g., highly muscular athletes with lower height but high weight).

3. Hemoglobin (Hg) Concentration
Visualization: Histogram & Density Plot

The hemoglobin levels are approximately normally distributed with a slight skew.

Mean Hg: 14.57 g/dL

Range: 11.6 - 19.2 g/dL

This metric is crucial for endurance athletes, though the distribution here covers a mix of anaerobic and aerobic sports.

4. Gender Participation
Visualization: Stacked & Side-by-side Bar Plots

Female Dominant: Netball and Gymnastics in this dataset are exclusively female.

Male Dominant: Water Polo is exclusively male in this sample.

Mixed: Sports like Basketball, Rowing, and Swimming show participation from both genders, allowing for direct physiological comparisons.

📈 Visualizations Generated
The R script (Data_Visualizations.R) generates the following plots:

<img width="747" height="541" alt="image" src="https://github.com/user-attachments/assets/5c2557b3-87fe-4d49-a545-e507b3720ba0" />

<img width="747" height="541" alt="image" src="https://github.com/user-attachments/assets/4aa12b53-33e7-4947-9b6f-e00de8f2447f" />

<img width="747" height="541" alt="image" src="https://github.com/user-attachments/assets/370da622-cd8e-4fe9-8609-d59912266b2f" />

<img width="747" height="541" alt="image" src="https://github.com/user-attachments/assets/d29358e4-95d0-4aa1-b88e-eb8e5f748409" />

<img width="747" height="541" alt="image" src="https://github.com/user-attachments/assets/6729873f-4e2a-44c5-9516-336721e12eda" />

<img width="747" height="541" alt="image" src="https://github.com/user-attachments/assets/06876b28-feeb-453e-ab3a-bf2ff90cdfc3" />

<img width="747" height="541" alt="image" src="https://github.com/user-attachments/assets/4e37f75f-71f4-4de3-9ae5-0b5def44eea2" />

<img width="747" height="541" alt="image" src="https://github.com/user-attachments/assets/ba1e52e5-c241-471e-b5ab-239f50afea5c" />

<img width="747" height="541" alt="image" src="https://github.com/user-attachments/assets/aa434c57-e8ac-48e7-918b-0cc63299a481" />

<img width="747" height="541" alt="image" src="https://github.com/user-attachments/assets/e65a2b5c-7a71-4a0f-ae2e-c8da1c73da25" />

<img width="747" height="541" alt="image" src="https://github.com/user-attachments/assets/b0e657ca-f5a1-499a-bac2-1a96215f9294" />

<img width="747" height="541" alt="image" src="https://github.com/user-attachments/assets/c2e57769-3bf9-4c01-9fb7-9fff0c65edc8" />





