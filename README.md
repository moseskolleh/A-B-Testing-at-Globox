
# GloBox A/B Test Analysis Report

## Overview

Welcome to the repository for the GloBox A/B testing project. The objective of this project is to analyze the results of an A/B test conducted on GloBox's mobile website and to provide data-driven recommendations.

## Summary of Findings

Our analysis revealed that the test group (Group B), which was exposed to the new banner, showed a statistically significant increase in conversion rates compared to the control group (Group A). This suggests that the banner positively influenced customer behavior, leading to more frequent purchases.

![Conversion Rate Over Time](https://github.com/moseskolleh/masterschool_project/assets/33796303/763f719a-74e3-4037-80d1-a1afe9ee4264)

While there was no significant change in the average amount spent per transaction, the increased conversion rate suggests a potential for higher overall revenue due to more transactions occurring.

![Average amount spent by test groups](https://github.com/moseskolleh/masterschool_project/assets/33796303/fcfb8ab9-b956-4880-9bf3-1e8363504a1a)

## Recommendations

Based on these findings, we recommend implementing the new banner on the GloBox mobile website. The increase in conversion rate is promising for potential revenue growth, and there were no indications of a novelty effect that could diminish this impact over time.

![Banner Implementation Recommendation](/path/to/banner_implementation_recommendation_image.png)

It is essential to continue monitoring the key performance metrics to ensure the change continues to be beneficial and to make data-informed adjustments as needed.

![Performance Metrics Monitoring](/path/to/performance_metrics_monitoring_image.png)

## Project Structure

The project is structured into three stages, reflecting the sprints in our analysis process:

1. **Data Extraction**: We used SQL to extract and aggregate user data, then visualized the results in Tableau.
2. **Data Analysis**: The A/B test results were analyzed using statistical methods in both spreadsheets and Python.
3. **Report Writing**: A comprehensive written report of the A/B test results was created, detailing the analysis and the data-driven recommendations.

## Contents

- [SQL Queries](./sql/queries.sql): Scripts used for data extraction.
- [Python Scripts](./python/analysis.py): Python code for statistical analysis.
- [Tableau Visualizations](./tableau/dashboard.twbx): Tableau workbook with data visualizations.
- [Final Report](./report/analysis_report.pdf): The full report detailing the A/B test analysis, findings, and recommendations.

## Usage

To engage with the analysis:

1. Clone this repository.
2. Review the SQL queries to understand the data extraction process.
3. Execute the Python scripts for a detailed analysis.
4. Open the Tableau dashboard to interact with the visualizations.
5. Read the final report to gain insights into the A/B test results and our strategic recommendations.

## Background

GloBox is expanding its product offerings in the food and drink category and has conducted an A/B test to determine the effectiveness of a new promotional banner. This analysis aims to guide the company's decision-making regarding the banner's implementation to boost product visibility and sales.

## Contributing

We welcome contributions. To contribute:

1. Fork the repository.
2. Create a new branch for your feature (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit the changes (`git commit -am 'Add some feature'`).
5. Push the branch (`git push origin feature-branch`).
6. Submit a pull request.

Please provide a detailed description of your changes and ensure they align with the project's objectives.
