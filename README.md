# Getting Started App

A simple application for the getting started guide in Docker's documentation.

### Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/Mohamed0Mourad/getting-started-app.git
    cd getting-started-app
    ```

## GitHub Actions Workflow

This repository uses GitHub Actions for Continuous Integration (CI) to build and push the Docker image to DockerHub.

### Workflow Configuration

The GitHub Actions workflow is defined in the file `.github/workflows/docker-image.yml`. It is triggered on pushes and pull requests to the `main` branch.

## Contributions

I created the Dockerfile and the GitHub Actions workflow and pushed them to this repository. The Dockerfile defines the environment for the application, and the workflow automates the building and pushing of the Docker image to DockerHub.
