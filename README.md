# Dairy-Farm-International-Holdings-Ltd.-customer-preference-data-analysis <br>
from Dairy Farm International Holdings Ltd.


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

![estimator](https://tva1.sinaimg.cn/large/006y8mN6gy1g89j210fyoj30hu09smy0.jpg)

**2).  plot according dendrogram; observing data on dendrogram, we can easily see (assume) that this dataset can be clustered into 3 groups**

![estimator](https://tva1.sinaimg.cn/large/006y8mN6gy1g89j4o1drrj309q09w0sv.jpg)

![estimator](https://tva1.sinaimg.cn/large/006y8mN6gy1g89j5f9pqnj308w0a274h.jpg)

**3). Apply factor analysis on 3-clusters using cuttree**
![estimator](https://tva1.sinaimg.cn/large/006y8mN6gy1g89j757osyj30fk04qt94.jpg)


**4). to further validate and to get more information relating to these three clusters, we use K-means method to find out according centers and sizes**
![estimator](https://tva1.sinaimg.cn/large/006y8mN6gy1g89j6f1yh8j30dy0eat9g.jpg)

_\* here K-means use the default Hartigan and Wong algorithm_


**5). after analyzing customers&#39; clustered preference on factor x1-x6, we then try to find how data relates to gender and educational level**

        **a). education**
   ![estimator](https://tva1.sinaimg.cn/large/006y8mN6gy1g89j9syjm4j30ek02eq2u.jpg)

        **b). gender**
   ![estimator](https://tva1.sinaimg.cn/large/006y8mN6gy1g89jai1876j30fy02ajra.jpg)


**6). Finally, we find fitted value for education and gender (i.e. Mean, sun…)**
   ![estimator](https://tva1.sinaimg.cn/large/006y8mN6gy1g89jb62bwqj30j0036aad.jpg)


**Conclusions drawn from the whole data-analysis:<br>**

  - **based on observed dendrogram, we can derive three clusters of customers (denoted by C1, C2, C3) who has preference based on different factors:**
    - C1: large amount in Organic certification, and small amount in price, taste, and   origin
    - C2: large amount in taste and origin, small amount in fat content, high quality certification and organic certification
    - C3: large amount in price and fat content, small amount in taste, origin and organic certification
  - **Based on factor analysis on &quot;gender&quot; and &quot;educational level&quot;, we derive:**
    - **Gender:** C2 has the largest mean in gender and C3 has the smallest
    - **Educational level:** C1 the largest mean in education level and C3 has the smallest

