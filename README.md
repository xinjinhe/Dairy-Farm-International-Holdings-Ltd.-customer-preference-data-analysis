# Dairy-Farm-International-Holdings-Ltd.-customer-preference-data-analysis

Customer preferences based on eight factors are analyzed in this repository; <br>
Conducting customer preference analysis based on extracted Milk data***<br>

_（ __from_ _Dairy Farm International Holdings Ltd__.）_

1.
  - **Objectives:** _to analyze what influence customer preference on milk purchase_
  - **Variables included in this study are:**
    - _x1: Taste_
    - _x2: Fact content_
    - _x3: High quality certification_
    - _x4: Origin_
    - _x5: Price_
    - _x6: Organic certification_
    - _gender; level of education_
  - **procedures:**
    - _in order to analyze customers&#39; preference towards these eight factors, we first use cluster analysis (under standardized value) to find possible trends and then use factor analysis (K-means method) to investigate further on mathematical indexes_
    - _to avoid ambiguity, x1-x6 are analyzed first; gender and educational level are analyzed later_



Steps_:_

**1). Load data, standardize data and then do cluster analysis on variable x1-x6**

_        (here we get the standardized value in index orders)_













**2).  plot according dendrogram; observing data on dendrogram, we can easily see (assume) that this dataset can be clustered into 3 groups**





**3). Apply factor analysis on 3-clusters using cuttree  **



**4). to further validate and to get more information relating to these three clusters, we use K-means method to find out according centers and sizes**

_\* here K-means use the default Hartigan and Wong algorithm_



**5). after analyzing customers&#39; clustered preference on factor x1-x6, we then try to find how data relates to gender and educational level**

        **a). education**



        **b). gender**

**6). Finally, we find fitted value for education and gender (i.e. Mean, sun…)**







**Conclusions drawn from the whole data-analysis:**

1.
  - **based on observed dendrogram, we can derive three clusters of customers (denoted by C1, C2, C3) who has preference based on different factors:**
    - C1: large amount in Organic certification, and small amount in price, taste, and   origin
    - C2: large amount in taste and origin, small amount in fat content, high quality certification and organic certification
    - C3: large amount in price and fat content, small amount in taste, origin and organic certification
  - **Based on factor analysis on &quot;gender&quot; and &quot;educational level&quot;, we derive:**
    - **Gender:** C2 has the largest mean in gender and C3 has the smallest
    - **Educational level:** C1 the largest mean in education level and C3 has the smallest
