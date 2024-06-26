# Analyzing the Impact of CI/CD Implementation on Software Quality

## Introduction
In this university project, I delved into the effects of Continuous Integration and Continuous Deployment (CI/CD) implementation on software quality, with a focus on statically typed languages such as Java, C++, and C#. Leveraging GitHub's vast repository ecosystem, I utilized the [GitHub API](https://developer.github.com/v3/) in Python to mine open-source repositories, dating back to 2015. This readme provides an overview of the methodology, tools, and findings of the study.

### Key Highlights:
- Utilization of GitHub API for data extraction
- Development of an ETL job in Jupyter Notebook and MySQL for data storage. The ETL process is detailed in [ETL_github_repo_search.ipynb](ETL_github_repo_search.ipynb).
- Categorization of commit messages using [Spacy](https://spacy.io/) package, detailed in [NLP_commit_message_categorize.ipynb](NLP_commit_message_categorize.ipynb).
- Visualizations and hypothesis testing using Pandas, Matplotlib, and Stats package, available in [Data_Analysis.ipynb](Data_Analysis.ipynb)

## Methodology
The project encompassed the following steps:

1. **Data Extraction**: Using Python and the GitHub API, repositories were extracted along with their related commits and commit messages. Repositories were filtered based on specific topics including Docker, DevOps, Software, and Web. Data was sorted by stars to prioritize popular repositories.
  
2. **ETL Job Development**: An Extract-Transform-Load (ETL) job was built in Jupyter Notebook to extract relevant information from the mined repositories. The extracted data was stored in a MySQL database for efficient storage and retrieval. Separate ETL processes were executed for each targeted programming language.
  
3. **Commit Message Categorization**: Another Python notebook was developed to categorize English commit messages using the Spacy package, a pre-trained Natural Language Processing (NLP) model. Spacy was chosen for its robustness in text processing and language understanding, allowing for accurate categorization of commit messages. These categorized messages were stored in MySQL for streamlined analysis.
  
4. **Data Analysis and Visualization**: In the final stage, various visualizations were created using Pandas and Matplotlib to analyze the extracted data. Hypothesis testing was performed using the Stats package to draw conclusions about the impact of CI/CD implementation on software quality.

## Conclusion
In conclusion, this project shed light on the effects of CI/CD adoption on software quality, providing valuable insights for software development practices.

- **Impact of CI/CD on Software Quality:** The research reveals a significant positive correlation between the adoption of Continuous Integration/Continuous Deployment (CI/CD) practices and enhanced software quality. By analyzing numerous open-source repositories, it becomes evident that CI/CD implementation improves code integration and deployment efficiency, resulting in reduced bugs in production environments.
  
- **Tool Selection Guidance:** Findings from RQ1 aid developers in selecting appropriate CI/CD tools for their projects. GitHub Actions emerges as a popular choice due to its versatility and ease of use, while JUnit remains prominent for Java projects. Insights into commonly used tools for unit tests, code smell, and security highlight SonarQube and CodeQL as leading choices.
  
- **Effectiveness of CI/CD in Bug Detection:** Investigation into RQ2 and RQ3 demonstrate that CI/CD practices effectively detect and prevent bugs in software development. Despite initial observations suggesting higher bug rates in CI/CD repositories, statistical analysis confirms the efficacy of CI/CD in identifying and addressing bugs early in the development lifecycle.

- **Limitations and Future Research Directions:** While the study identifies significant differences in bug rates for certain error categories, there are remaining areas requiring further exploration. Future research could delve into additional error categories and address the handling of build tools like Maven and Gradle. Qualitative analysis could also supplement the quantitative findings for a more comprehensive understanding and validation of the results.

## Contributing
Contributions and feedback are welcome! Feel free to submit issues or pull requests.

## License
This project is licensed under the [MIT License](LICENSE).

## Acknowledgements
Special thanks to [GitHub](https://github.com) for providing the necessary data through their API, and to the developers of the Python packages used in this project.
