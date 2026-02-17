# Modern C++ CI/CD Demo Project

This project demonstrates a standard C++ directory structure, CMake build system integration, and automated CI/CD workflows using GitHub Actions.

## Project Structure

*   `./src`: Source code files (.cpp)
*   `./include`: Header files (.h / .hpp)
*   `./tests`: Unit test files

## Local Build Instructions

To keep the root directory clean, we use an out-of-source build approach:

```bash
# Create and enter the build directory
mkdir -p build && cd build

# Configure the project with CMake
cmake ..

# Compile
make

# Run the application
./main_bin 

# Run the tests
./test_bin
```

## CI/CD Workflow (GitHub Actions)
This project is integrated with GitHub Actions. Every push to the repository automatically triggers a build and test cycle to ensure code stability. You can find the configuration in .github/workflows/ci.yml.

## Git Setup & Deployment
### 1. Initialize Local Repository

```bash
git init
git add .
git commit -m "Initial commit: Project structure and CI/CD"
```

### 2. Configure Credentials
To avoid typing your token for every push:
```bash
git config --global credential.helper store
```

### 3. Create the Repository Github
Create new repo and generate a Personal Access Token (Classic). Assign the following scopes/permissions:
repo (Full control of private repositories).
workflow (Update GitHub Action workflows).

Link your local project to GitHub and push:
```bash
git remote add origin https://github.com/fthayd/cpp-cicd-demo.git
git branch -M main
git push -u origin main
```

When prompted for a password, paste your Classic Token instead of your GitHub password.

## Docker Local Test
Use the commands below to test with docker on local computer.
```bash
docker build -t my-test-image .
docker run my-test-image
```


# Version Log
When | Who | What
---- | --- | ----
17/02/26 | F. Aydin | Prepared Readme.md file
17/02/26 | F. Aydin | Test with docker ability added!