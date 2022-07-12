# cookiecutter-tdsp-python
A [cookiecutter](https://cookiecutter.readthedocs.io/) template for a data science project file structure following Microsoft's [Team Data Science Process (TDSP)](https://docs.microsoft.com/en-us/azure/machine-learning/team-data-science-process/overview) guidelines.  This template allows for the easy creation of a full project directory that is both language- and cloud-agnostic.

## Usage

1. Install the project template utility [cookiecutter](https://cookiecutter.readthedocs.io/) using the package manager of your choice.
    * `$ pip install cookiecutter`
    * `$ conda install cookiecutter`
    * `$ sudo apt-get install cookiecutter`
2. Generate your project using the project template from this repository.  You will be prompted for both the project name, the customer, or the client and asked if you want to set up the development environment for the project.
```
$ cookiecutter https://github.com/lucasmtz/cookiecutter-tdsp-python
project_name [Placeholder Data-Science-Project]: propensity-buy-ecommerce
customer_name [Placeholder Customer Name]: Some Big Company
setup_project [Choice Variable]: 1
```
3. If setup_project is "Yes, " the project is already set up. In another case you can setup it up by running:
```
$ cd propensity-buy-ecommerce
$ bash setup_project.sh
```
## Project Structure

Each subdirectory contains a README containing a template and recommended contents for that data science life cycle stage.

```
[project_name]
┣ code/
┃ ┣ deployment/
┃ ┃ ┣ README.md
┃ ┃ ┗ operationalization.py
┃ ┣ exploratory_data_analysis/
┃ ┃ ┣ README.md
┃ ┃ ┣ data_pipeline.json
┃ ┃ ┗ data_prep.py
┃ ┣ modeling/
┃ ┃ ┣ README.md
┃ ┃ ┗ model.py
┃ ┗ README.md
┣ docs/
┃ ┣ data_dictionaries/
┃ ┃ ┣ README.md
┃ ┃ ┗ raw-data-dictionary.csv
┃ ┣ data_reports/
┃ ┃ ┣ README.md
┃ ┃ ┣ data-defintion.md
┃ ┃ ┣ data-pipeline.txt
┃ ┃ ┗ data-summary-report.md
┃ ┣ model/
┃ ┃ ┣ baseline/
┃ ┃ ┃ ┗ baseline-model.md
┃ ┃ ┣ model_1/
┃ ┃ ┃ ┗ model-report.md
┃ ┃ ┣ README.md
┃ ┃ ┗ final-report.md
┃ ┣ project/
┃ ┃ ┣ README.md
┃ ┃ ┣ charter.md
┃ ┃ ┣ exit-report.md
┃ ┃ ┗ system-architecture.docx
┃ ┗ README.md
┣ sample_data/
┃ ┣ for_modeling/
┃ ┃ ┗ modelling.md
┃ ┣ processed/
┃ ┃ ┗ processed.md
┃ ┣ raw/
┃ ┃ ┗ raw-data.md
┃ ┗ README.md
┣ .gitignore
┣ .pre-commit-config.yaml
┣ README.md
┣ setup.cfg
┗ setup_project.sh
```

## TDSP

Microsoft's [Team Data Science Process](https://docs.microsoft.com/en-us/azure/machine-learning/team-data-science-process/overview) is an agile, iterative, data science methodology to improve collaboration and team learning. It is supported through a lifecycle definition, standard project structure, artifact templates, and tools for productive data science.  The original archived repository containing the TDSP format is available at https://github.com/Azure/Azure-TDSP-Utilities.
