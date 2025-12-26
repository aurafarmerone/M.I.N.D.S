# 📊 Data Insights from Customer Ratings (AIML Basics)

This project focuses on **extracting data insights** from cleaned customer feedback data. It demonstrates how raw data can be transformed into **meaningful numbers** that help in decision-making.

This is a continuation of the **data cleaning project**, where cleaned data is now used to generate insights.



## ❓ What Are Data Insights?

**Data insights** are useful patterns, summaries, or conclusions derived from data.

They answer questions like:
- What is happening in the data?
- Is customer feedback mostly positive or negative?
- Are there problems we should worry about?

📌 In simple words:
> **Data insights turn raw data into understanding.**



## 💡 Why Are Data Insights Helpful?

Data insights help us:

- ✅ Make **better business decisions**
- ✅ Understand **customer satisfaction**
- ✅ Identify **problem areas**
- ✅ Support **AI / ML models** with meaningful features

Without insights, data is just numbers.



## 🎯 Project Missions

### Mission 1
📈 **Calculate the Average Rating**

This tells us the **overall customer satisfaction level**.



### Mission 2
⚠️ **Calculate Percentage of Poor Ratings (< 3)**

This helps identify:
- Negative user experience
- Product or service issues



## 📂 Project Files

```
├── customer_data.json        # Customer feedback data
├── data_insights.py          # Data cleaning + insights code
├── README_Data_Insights.md   # This documentation
```



## 🧹 Step 1: Data Cleaning

Before generating insights, we must clean the data.

### 🔸 Why Cleaning Is Required

Ratings are stored as:
- "five"
- "four"
- "3.5"

These must be converted to numeric values.



### ✅ Data Loading Code

```python
import json

def loaddata(jsonfile):
    with open(jsonfile, "r") as f:
        Pydata = json.load(f)
    return Pydata

# load raw data
data = loaddata("customer_data.json")
```



### ✅ Cleaning Rating Values

```python
# convert text ratings to numeric values

def clean_data(data):
    cleandata = []
    map = {
        "one": "1",
        "two": "2",
        "three": "3",
        "four": "4",
        "five": "5"
    }

    for user in data:
        rating = user["rating"].strip().lower()
        if rating in map:
            user["rating"] = map[rating]
        cleandata.append(user)

    return cleandata

NewData = clean_data(data)
```

📌 After this step, all ratings are numeric strings.



## 🔍 Step 2: Generating Data Insights

Now that data is clean, we can extract insights.



### 📈 Mission 1: Average Rating

```python
# calculate average rating

def avgRating(data):
    rate = 0
    for user in data:
        rate += float(user["rating"])
    return rate / len(data)
```

🔎 **Insight:**
- Higher average → satisfied customers
- Lower average → quality issues



### ⚠️ Mission 2: Poor Rating Percentage

```python
# calculate percentage of poor ratings (<= 3)

def poorRatingPercentage(data):
    poorRate = 0
    for user in data:
        if float(user["rating"]) <= 3:
            poorRate += 1
    return (poorRate / len(data)) * 100
```

🔎 **Insight:**
- High percentage → serious product or service concern



## ▶️ Running the Code

```python
print("AVG Rating is:", avgRating(NewData))
print("Poor Rating % is:", poorRatingPercentage(NewData))
```

### 📌 Sample Output

```
AVG Rating is: 3.9
Poor Rating % is: 33.33
```



## 🧠 Key Learnings

By completing this project, you learn:

- Difference between raw data and insights
- Why data cleaning comes before analysis
- How simple math creates powerful insights
- How AIML projects begin with analysis



## 🚀 How This Helps in AIML

- Average rating → **feature for ML models**
- Poor rating % → **risk indicator**
- Clean numeric data → **model-ready input**

📌 **Insight generation is the bridge between data cleaning and machine learning.**



## ⭐ Final Note

This project shows that:
> Even simple Python logic can generate powerful insights.

If you found this useful, ⭐ the repository and keep learning AIML 🚀
