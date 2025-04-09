# Getting Started App

A simple application for the getting started guide in Docker's documentation.

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your machine
- [Node.js](https://nodejs.org/) (optional, if you want to run the app locally without Docker)

### Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/Mohamed0Mourad/getting-started-app.git
    cd getting-started-app
    ```

2. Build the Docker image:

    ```sh
    docker build -t getting-started-app .
    ```

3. Run the Docker container:

    ```sh
    docker run -p 3000:3000 getting-started-app
    ```

4. Open your browser and go to `http://localhost:3000` to see the application running.

## Usage

This application serves as a starting point for learning Docker. It is a simple app built with JavaScript, HTML, and CSS.

### Running Locally

If you prefer to run the app locally without Docker, follow these steps:

1. Install the dependencies:

    ```sh
    npm install
    ```

2. Start the application:

    ```sh
    npm start
    ```

3. Open your browser and go to `http://localhost:3000` to see the application running.

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
