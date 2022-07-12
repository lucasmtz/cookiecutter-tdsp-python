#!/bin/bash
if [[ {{cookiecutter.setup_project}} == "Yes" ]]; then
    echo
    echo "Running setup_project.sh..."
    # replace "# .vscode" by ".vscode" in .gitignore
    sed -i 's/# .vscode/\.vscode/g' .gitignore
    bash setup_project.sh
else
    echo
    echo "You chose not to set up the development enviroment for the project."
    echo "You can always do this by running the setup_project.sh script."
fi
echo
echo "{{cookiecutter.project_name}} TDSP project template created. Happy coding!"
