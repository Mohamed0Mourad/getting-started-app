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

```yaml
name: Docker Image CI
on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main
jobs:
  build:
    runs-on: ubuntu-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v3

    - name: Set up Docker Buildx
      uses: docker/setup-buildx-action@v3

    - name: Log in to DockerHub
      uses: docker/login-action@v3
      with:
        username: ${{ secrets.DOCKERHUB_USERNAME }}
        password: ${{ secrets.DOCKERHUB_TOKEN }}

    - name: Build and push Docker image
      uses: docker/build-push-action@v5
      with:
        context: .
        push: true
        tags: |
          docker.io/${{ secrets.DOCKERHUB_USERNAME }}/getting-started:latest
          docker.io/${{ secrets.DOCKERHUB_USERNAME }}/getting-started:${{ github.sha }}
