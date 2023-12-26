
# GloBox A/B Test Analysis Report

## Overview

Welcome to the repository for the GloBox A/B testing project. The objective of this project is to analyze the results of the A/B test conducted on GloBox's mobile website and to provide data-driven recommendations.

![w=1920,quality=80](https://github.com/moseskolleh/masterschool_project/assets/33796303/882475ee-6575-4bd3-84aa-bd66cd8628b2)


## Summary of Findings

The analysis showed that Group B, exposed to the new banner, had significantly higher conversion rates than Group A, the control group. This implies the banner positively influenced customer engagement and behavior.

![Conversion rate by test group](https://github.com/moseskolleh/masterschool_project/assets/33796303/5e31d09f-39f9-40c2-bcef-ce4f836e4f51)

However, the increased conversion rate did not translate into a significant change in average spending per transaction, indicating that while engagement may be higher, it's not leading to increased revenue.

![Average amount spent by test groups (1)](https://github.com/moseskolleh/masterschool_project/assets/33796303/ad2b383b-bec4-4b09-81a8-b5d9e3aa426f)

## Recommendations

Hold off on launching the banner experiment. Despite a significant increase in Group B's conversion rate, the lack of impact on average spending and uncertain long-term effects suggest revisiting and potentially redesigning the banner for better overall effectiveness.

![Globox](https://github.com/moseskolleh/masterschool_project/assets/33796303/074d1a00-73ba-413d-9bcd-67d02575211e)

![Novelty Effects](https://github.com/moseskolleh/masterschool_project/assets/33796303/8ba2e940-0fc2-4fc2-8ae0-23f8d474b485)

## Project Structure

The project is structured into three stages, reflecting the sprints in the analysis process:

1. **Data Extraction**: SQL was used to extract and aggregate user data, then visualized the results in Tableau.
2. **Data Analysis**: The A/B test results were analyzed using statistical methods in both spreadsheets and Python.
3. **Report Writing**: A comprehensive written report of the A/B test results was created, detailing the analysis and the data-driven recommendations.
4. **Presentation**: A presentation of the A/B test results was done together with a video using loom.


## Contents

- [Sprint project.sql.zip](https://github.com/moseskolleh/masterschool_project/files/13339653/Sprint.project.sql.zip) : Scripts used for data extraction.
- [Python Scripts](./python/analysis.py): Python code for statistical analysis.
- [Spreadsheets](./python/analysis.py): Spreadsheets for statistical analysis.
- [Tableau Visualisations](https://public.tableau.com/views/Data_Sprint_MasterSchool_Project/CountryandRegionAnalysis?:language=en-GB&:display_count=n&:origin=viz_share_link): Tableau workbook with data visualizations.
- [Final Report](https://docs.google.com/document/d/1ubTPxZxTBaUjCQtpVRi_TB-ebw1unRR9MVspqz5Btyo/edit?usp=sharing): The full report detailing the A/B test analysis, findings, and recommendations.

## Usage

To engage with the analysis:

1. Clone this repository.
2. Review the SQL queries to understand the data extraction process.
3. Execute the Python scripts for a detailed analysis.
4. Open the Tableau dashboard to interact with the visualizations.
5. Read the final report to gain insights into the A/B test results and the recommendations.

## Background

GloBox is expanding its product offerings in the food and drink category and has conducted an A/B test to determine the effectiveness of a new promotional banner. This analysis aims to guide the company's decision-making regarding the banner's implementation to boost product visibility and sales.

## Contributing

Contributions are welcome. To contribute:

1. Fork the repository.
2. Create a new branch for your feature (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit the changes (`git commit -am 'Add some feature'`).
5. Push the branch (`git push origin feature-branch`).
6. Submit a pull request.

Please provide a detailed description of your changes and ensure they align with the project's objectives.
