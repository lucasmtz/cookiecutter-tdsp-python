# TDSP Project Structure, and Documents and Artifact Templates

This is a general project directory structure following the Team Data Science Process developed by Microsoft. It also contains templates for various documents that are recommended as part of executing a data science project.

[Team Data Science Process (TDSP)](https://docs.microsoft.com/en-us/azure/machine-learning/team-data-science-process/overview) is an agile, iterative, data science methodology to improve collaboration and team learning. It is supported through a lifecycle definition, standard project structure, artifact templates, and [tools](https://github.com/Azure/Azure-TDSP-Utilities) for productive data science.

The two documents under docs/project, namely the [charter](./docs/project/charter.md) and [exit-report](./docs/project/Exit%20Report.md) are particularly important to consider. They help to define the project at the start of an engagement, and provide a final report to the customer or client.

**NOTE:** In some projects, e.g. short term proof of principle (PoC) or proof of value (PoV) engagements, it can be relatively time consuming to create and all the recommended documents and artifacts. In that case, at least the **charter** and **exit report** should be created and delivered to the customer or client. As necessary, organizations may modify certain sections of the documents. But it is strongly recommended that the content of the documents be maintained, as they provide important information about the project and deliverables.

## License

_Permission to use the TDSP structure is given by Microsoft via the MIT License:_

The MIT License (MIT)
Copyright (c) Microsoft Corporation. All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the "Software"), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


## Starting project structure
After running the cookiecutter post generation hook or the setup_project.sh script the initial project will have the following structure:

```
{{cookiecutter.__package_name}}
├─ .gitattributes
├─ .gitignore
├─ .pre-commit-config.yaml
├─ README.md
├─ code
│  ├─ README.md
│  ├─ _version.py
│  ├─ deployment
│  │  ├─ README.md
│  │  └─ operationalization.py
│  ├─ exploratory_data_analysis
│  │  ├─ README.md
│  │  ├─ data_pipeline.json
│  │  └─ data_prep.py
│  └─ modeling
│     ├─ README.md
│     └─ model.py
├─ docs
│  ├─ README.md
│  ├─ data_dictionaries
│  │  ├─ README.md
│  │  └─ raw-data-dictionary.csv
│  ├─ data_reports
│  │  ├─ README.md
│  │  ├─ data-defintion.md
│  │  ├─ data-pipeline.txt
│  │  └─ data-summary-report.md
│  ├─ model
│  │  ├─ README.md
│  │  ├─ baseline
│  │  │  └─ baseline-model.md
│  │  ├─ final-report.md
│  │  └─ model_1
│  │     └─ model-report.md
│  └─ project
│     ├─ README.md
│     ├─ charter.md
│     ├─ exit-report.md
│     └─ system-architecture.docx
├─ sample_data
│  ├─ README.md
│  ├─ for_modeling
│  │  └─ modelling.md
│  ├─ processed
│  │  └─ processed.md
│  └─ raw
│     └─ raw-data.md
├─ setup.cfg
├─ setup.py
├─ setup_project.sh
└─ versioneer.py
```
