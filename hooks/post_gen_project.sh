#!/bin/bash
echo
echo $(ls)
if [[ {{cookiecutter.setup_project}} == "Yes" ]]; then
    echo -e "\nRunning post_gen_project.sh..."
    sed -i 's/# .vscode/\.vscode/g' .gitignore
    bash setup_project.sh
else
    echo -e "\nYou chose not to set up the development enviroment for the project."
    echo "You can always do this by running the setup_project.sh script."
fi

# -----------------------------------------------------------------------------------------------------------------
# Run pre-commit hooks
# -----------------------------------------------------------------------------------------------------------------
echo -e "\nRunning pre-commit hooks and commiting new template..."
pre-commit install
pre-commit autoupdate
git add .
pre-commit run --all-files
git add .
pre-commit run --all-files
git add .
pre-commit run --all-files
git add .
git commit -m "Create {{cookiecutter.__package_name}} tdsp template"
echo -e "\n{{cookiecutter.project_name}}[{{cookiecutter.__package_name}}] TDSP project template created. Happy coding!"
