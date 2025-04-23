```markdown
# OLA Ride Data Analysis: Bengaluru Insights  
**End-to-end analysis of 100K synthetic ride records**  

---

## 🚀 Quick Overview  
- **Tools Used**: SQL, Power BI  
- **Key Metrics**: Success rate (62%), Cancellations (Customer 6.7%, Driver 17.4%), Incomplete rides (5.3%)  
- **Top Insights**: Weekend surge (+21% booking value), UPI dominance (45% payments), Prime SUV longest rides (12 km avg)  

---

## 📂 Repository Structure  
```
├── Ola Project.sql        # Database setup & analytical views  
├── solution.sql           # View for easy access to the solution 
├── Ola Analysis.pbix      # Interactive Power BI dashboard  
├── Ola Data.xlsx          # Raw data in Excel
├── README.md              # Project documentation  
```

---

## 🗃️ Core Data Highlights  
- **1 lakh records** with 18 columns, including:  
  - Booking status, vehicle type (7 categories), payment methods  
  - Ride distance, ratings (driver/customer), cancellation reasons  
- **Targets Met**:  
  - Success rate (62%), Customer cancellations ≤7%, Incomplete rides <6%  
  - Weekend surge in booking value (+21% vs. weekdays)  

---

## 🔍 Key Analysis  
### SQL Views (10 Queries)  
1. Successful bookings, cancellations, incomplete rides  
2. Avg. ride distance by vehicle type  
3. Top 5 customers by ride count  
4. Booking value of successful rides (₹5.23M)  

### Power BI Dashboard  
- **Trends**: Ride volume, payment splits, cancellation reasons  
- **Performance**: Driver/customer ratings, revenue by vehicle type  
- **Efficiency**: V_TAT (5.2 mins) vs. C_TAT (3.8 mins)  

---

## 📊 Top Metrics  
| Metric                  | Value          |
|-------------------------|---------------:|
| Success Rate            | 62%            |
| Avg. Booking Value      | ₹420 (Weekday) |  
|                         | ₹510 (Weekend) |  
| UPI Payment Share       | 45%            |
| Avg. Ride Distance      | 7.4 km         |
| Driver/Customer Ratings | 4.6 / 4.7 ★    |

---

## 🛠️ Quick Start  
1. **Database Setup**:  
   ```sql
   mysql> source Ola_Project.sql;
   ```
2. **Explore Data**:  
   - Run pre-built SQL views from `Solutions.sql`  
   - Open `Ola Analysis.pbix` in Power BI for visuals  

---

## 📬 Contact  
For questions or collaborations:  
- **Email**: [pragyan036@gmail.com](mailto:pragyan036@gmail.com)  
- **LinkedIn**: [Pragyan Dhakal](https://www.linkedin.com/in/pragyan-dhakal-b3a952319/)  




