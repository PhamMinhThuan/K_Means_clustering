# [K-MEANS CLUSTERING MODEL](https://github.com/PhamMinhThuan/K_Means_clustering)

## PROJECT OVERVIEW

- Use Advantureworks DW 2019 dataset, collecting customer feature from this dataset.
- Create a K-Means clustering model to define customer segments.

## DATASET OVERVIEW

- Restore AdvantureWorksDW2019.bak file
- Run file SQL, create SQL view
- Use python connect SQL server and show SQL view table.

## DATA CLEANING

### Check null and change data type <space><space>

![](/picture/1.PNG)

![](/picture/2.PNG)

## DATA EXPLORATION

### Data collection period <space><space>

Data from 2010-12-29 00:00:00 to 2014-01-28 00:00:00
<space><space>

### Products number per orders <space><space>

![](/picture/3.PNG)

### Category <space><space>

![](/picture/4.PNG)

### Continent <space><space>

![](/picture/5.PNG)

![](/picture/6.PNG)

### Coupon <space><space>

![](/picture/7.PNG)

### Boxplots of feature <space><space>

![](/picture/7a.PNG)

### Customer feature table <space><space>

![](/picture/7b.PNG)

### Age <space><space>

![](/picture/8.PNG)

Overally, approximately 80 percent of customers are between 35 and 62 year old. <space><space>

### Gender <space><space>

![](/picture/9.PNG)

### Recency <space><space>

![](/picture/10a.PNG)

### Frequency <space><space>

![](/picture/10b.PNG)

### Monetary <space><space>

![](/picture/10c.PNG)

### Yearly Income <space><space>

![](/picture/10.PNG)

![](/picture/11.PNG)

Binning Yearly Income into high medium low

## K-MEANS MODELLING

### A. North Ameria

![](/picture/12a.PNG)

### Recency skewness

![](/picture/14.PNG)

sqrt skewness -> min <space><space>

Choose sqrt method sqrt <space><space>

### Frequency skewness

![](/picture/12.PNG)

boxcox skewness -> min <space><space>

Choose boxcox method <space><space>

### Monetary skewness

![](/picture/13.PNG)

boxcox skewness -> min <space><space>

Choose boxcox method <space><space>

### The Elbow Method

![](/picture/17.PNG)

### Silhouette Coefficient

![](/picture/18.PNG)

### Customer segmentation:

![](/picture/19.PNG)

### B. Europe

![](/picture/18a.PNG)

### Recency skewness

![](/picture/18.PNG)

sqrt skewness -> min <space><space>

Choose sqrt method sqrt <space><space>

### Frequency skewness

![](/picture/19.PNG)

boxcox skewness -> min <space><space>

Choose boxcox method <space><space>

### Monetary skewness

![](/picture/20.PNG)

boxcox skewness -> min <space><space>

Choose boxcox method <space><space>

### The Elbow Method

![](/picture/21.PNG)

### Silhouette Coefficient

![](/picture/22.PNG)

### Customer segmentation:

![](/picture/23.PNG)

### C. Pacific

![](/picture/24a.PNG)

### Recency skewness

![](/picture/24.PNG)

sqrt skewness -> min <space><space>

Choose sqrt method sqrt <space><space>

### Frequency skewness

![](/picture/25.PNG)

boxcox skewness -> min <space><space>

Choose boxcox method <space><space>

### Monetary skewness

![](/picture/26.PNG)

boxcox skewness -> min <space><space>

Choose boxcox method <space><space>

### The Elbow Method

![](/picture/27.PNG)

### Silhouette Coefficient

![](/picture/28.PNG)

### Customer segmentation:

![](/picture/29.PNG)

Monetary:

0 - 1000: Low spending

1000 - 2000: Medium spending

2000: High spending

Frequency:

1 - 2: Low frequency

2 - 3: Medium frequency

over 3: High frequency

In Europe:

2: Low income, low frequency, high spending, customer churn

3: Low income, high frequency, medium spending

1: Medium income, high frequency, medium spending

6: High income, high frequency, medium spending

In North America:

2: Low income, low frequency, high spending, customer churn

4: Low income, medium frequency, low spending

1: Medium income, high frequency, medium spending

6: High income, high frequency, medium spending

In Pacific:

2: Low income, low frequency, high spending, customer churn

7: Low income, high frequency, medium spending

5: Medium income, high frequency, high spending

6: High income, high frequency, high spending
