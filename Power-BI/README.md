✈️ Flight Delay Analysis – Power BI Dashboard

📌 Project Overview
This project analyzes commercial flight data to understand flight delays, delay reasons, and airline performance.
The dashboard helps identify key factors causing delays and evaluates overall operational efficiency across airlines, airports, and time periods.

🎯 Objectives
Analyze overall flight performance
Identify delay patterns and major delay causes
Compare airline-wise and airport-wise delays
Provide actionable insights through interactive visuals

🛠 Tools & Technologies Used
Power BI
Power Query (ETL)
DAX (Data Analysis Expressions)
CSV Datasets

📂 Data Description
The project uses three main datasets:
1️⃣ Flights Dataset
Contains detailed flight-level information including:
Flight date (Year, Month, Day)
Airline code
Origin & destination airports
Arrival delay
Delay reasons (Weather, Airline, Security, Aircraft)
Cancellation details

2️⃣ Airlines Dataset
Airline Code
Airline Name 

3️⃣ Airports Dataset
Airport Code
Airport Name
City, State
Latitude & Longitude

🔄 Data Preparation & Transformation
Data cleaning and transformation were performed using Power Query:
Removed unnecessary and duplicate columns
Handled null values appropriately
Converted date and time fields into usable formats
Created calculated columns for analysis
Standardized column names and data types

🔗 Data Modeling & Relationships
Relationships were created using a star schema approach:
From Table	Column	To Table	Column
Flights	Airline Code	Airlines	Airline Code
Flights	Origin Airport	Airports	Airport Code
Flights	Destination Airport	Airports	Airport Code

All relationships are one-to-many, ensuring efficient filtering and accurate aggregations.

🧮 DAX Measures Created
Key measures include:
Total Flights
Delayed Flights
Delay Percentage
Average Delay (Delayed Flights Only)
Worst Delay Reason
These measures enable dynamic analysis across all dashboard visuals.

📊 Dashboard Pages
🔹 1. Overview
Provides a high-level summary of:
Total flights
Percentage of delayed flights
Average delay
Overall operational performance

🔹 2. Delay Analysis
Focuses on:
Delay trends by airline and airport
Major delay reasons
Worst-performing delay categories

🔹 3. Flight Performance
Evaluates:
Airline-wise average delays
Performance comparison across routes
Efficiency and punctuality analysis

🎛 Common Interactive Features
Slicers for Year, Month, Airline, Origin Airport
Cross-filtering between visuals
Clear and user-friendly visual layouts

📄 Dashboard File
The complete dashboard is available in PDF format:

📥 Flight_Delay_Analysis_Dashboard.pdf
(Power BI file not uploaded due to GitHub size limitations)

📈 Key Insights
Certain airlines consistently experience higher delays
Late aircraft and airline-related issues are major delay contributors
Delay patterns vary significantly by airport and season

🚀 Conclusion
This project demonstrates end-to-end Power BI skills including:
Data cleaning and modeling
Writing efficient DAX measures
Designing meaningful dashboards
Presenting insights clearly for decision-making

👤 Author
Meet Rawal
Aspiring Data Analyst
📌 Tools: Power BI | SQL | Excel | Python
