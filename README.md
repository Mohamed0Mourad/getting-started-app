
# 🐳 Docker Getting Started App  

![Docker](https://img.shields.io/badge/Docker-Container-blue)
![CI](https://img.shields.io/badge/CI-GitHub%20Actions-success)


A simple application demonstrating Docker basics, perfect for following along with Docker's official documentation.

## 🚀 Quick Start

### Prerequisites
- Docker installed ([Installation Guide](https://docs.docker.com/get-docker/))
- Git (optional)

### Clone and Run
```bash
git clone https://github.com/Mohamed0Mourad/getting-started-app.git
cd getting-started-app
docker build -t getting-started .
docker run -dp 3000:3000 getting-started
```

Visit the app at: [http://localhost:3000](http://localhost:3000)

## 🔧 CI/CD Pipeline

This repository uses GitHub Actions to automatically:
1. Build Docker image on every push
2. Push to Docker Hub

**Workflow File**: `.github/workflows/docker-image.yml`

### Pipeline Triggers
- Pushes to `main` branch
- Pull requests to `main` branch

## 🏗️ Project Structure

```
getting-started-app/
├── .github/
│   └── workflows/
│       └── docker-image.yml    # CI/CD configuration
├── Dockerfile                  # Docker build instructions
├── package.json                # Node.js dependencies
└── src/                        # Application source code
```

## 🛠️ Technical Implementation

Key contributions:
- Created optimized `Dockerfile`.
- Implemented GitHub Actions workflow for:
  - Automated builds
  - Docker Hub integration
  - CI/CD pipeline

