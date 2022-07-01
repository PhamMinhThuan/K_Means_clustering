# [KNN CLUSTERING MODEL](https://github.com/PhamMinhThuan/KNN_clustering)

## PROJECT OVERVIEW

* Use Advantureworks DW 2019 dataset, collecting customer feature from this dataset.
* Create a KNN clustering model to define customer segments.


## DATA MINING

* Restore AdvantureWorksDW2019.bak file
* Run file SQL, create SQL view
* Use python connect SQL server and show SQL view table.

## DATA CLEANING

* Check null

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/1.PNG)

* Change data type
 
![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/2.PNG)

* Data collection period:

Data from 2010-12-29 00:00:00 to 2014-01-28 00:00:00

* Productnumber per order

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/3.PNG)

* The Category Chart

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/4.PNG)

* The Continent Chart

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/5.PNG)

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/6.PNG)
 
* Coupon

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/7.PNG)

* Boxplot chart

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/7a.PNG)

* Customer feature table
 
![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/7b.PNG)

* Age

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/8.PNG)

* Gender

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/9.PNG)

* Yearly Income

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/10.PNG)

* Recency

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/10a.PNG)

* Frequency

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/10b.PNG)

* Monetary

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/10c.PNG)

* YearlyIncome binning

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/11.PNG)

Binning Yearly Income into high medium low

## DATA TRANSFORMATION
### A. Labeling Categories with Dummy variables:

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/11b.PNG)

### B. Skewness:

* Check skewness

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/12.PNG)

* Age

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/13.PNG)

* Recency

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/14.PNG)

* Frequency

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/15.PNG)

* Monetary

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/16.PNG)

* Create transformation table

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/16a.PNG)

### C. Data Standardization:
* Standard scaler

### D. KNN clustering:
#### All features
* The Elbow Method

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/17.PNG)

* Silhouette Coefficient

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/18.PNG)

* Segment customer table

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/19.PNG)

#### All features, except Age and Gender:
* The Elbow Method

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/20.PNG)

* Silhouette Coefficient

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/21.PNG)

* Segment customer table

![](https://github.com/PhamMinhThuan/KNN_clustering/blob/main/picture/22.PNG)

Monetary: 

0 - 1000: Low spending

1000 - 2000: Medium spending

2000: High spending

Frequency: 

1 - 2: Low frequency

2 - 3: Medium frequency

over 3: High frequency

In Europe: 

2: Low income, low frequency,  high spending, customer churn

3: Low income, high frequency, medium spending

1: Medium income, high frequency,  medium spending

6: High income, high frequency,  medium spending

In North America:

2: Low income, low frequency,  high spending, customer churn

4: Low income, medium frequency, low spending

1: Medium income, high frequency,  medium spending

6: High income, high frequency,  medium spending

In Pacific:

2: Low income, low frequency, high spending, customer churn

7: Low income, high frequency,  medium spending

5: Medium income, high frequency, high spending

6: High income, high frequency,  high spending
