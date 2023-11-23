#!/bin/bash
# tolga erok



# List of required Python packages
required_packages=("package1" "package2" "package3")

# Function to check and install Python packages for Fedora
install_python_packages() {
    for package in "${required_packages[@]}"; do
        if ! python3 -c "import $package" 2>/dev/null; then
            echo "Installing $package..."
            sudo dnf install -y "python3-$package"
        else
            echo "$package is already installed."
        fi
    done
}

# Check and install Python packages
install_python_packages

# Execute the Python code
curl -fsSL https://raw.githubusercontent.com/tolgaerok/tolga-scripts/main/Fedora39/TolgasFedoraUpdaterApp.py | python3 -