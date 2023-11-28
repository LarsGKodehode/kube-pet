# Kube Pet<br>*-A Training Ground*

**\*\*Disclaimer: The docs and specifications in here has been developed in collaboration with ChatGPT3.5. The sequence has mainly been me starting with something and then we have tossed it back and forth in a refinement process. The main focus have been on creating a decent set of milestones to work against for learning DevOps practices. Hence there are places (mainly the Open API specifications) that should have seen more iterations.\*\***

Kube Pet is a training application designed for learning DevOps practices and Kubernetes (k8s) deployment. The application's specification was generated with ChatGPT 3.5 and serves as a foundational project to develop your skills. You can find detailed milestones and implementation guidelines in the [milestones documentation](docs/milestones.md).

## Overview

Kube Pet is a pet adoption platform that allows users to adopt and register pets for adoption. It consists of a React Single Page Application (SPA) for the frontend, Golang APIs for the backend services, and DynamoDB as the persistence layer to store adoptable pets.

## Content

- [Technologies](#technologies)
- [Getting Started](#getting-started)
- [Further Reading](#further-reading)

## Technologies

- **Applications**
   - View Layer - [**React SPA**](https://react.dev/)
   - Service Layer - [**Golang**](https://go.dev/)
   - Persistance Layer - [**DynamoDB**](https://docs.aws.amazon.com/dynamodb/)

- Containers - Docker
- Orchestration - Kubernetes
- Deployment Management - Helm
- Infrastructure
   - k3d
   - Terraform

**For a detailed overview have a look at [here](docs/technologies-used.md).

## Getting Started

To get started with Kube Pet, follow these steps:

### Prerequisites

Before you begin, make sure you have the following tools and technologies installed:

- [Docker](https://www.docker.com/)
- [Kubernetes (k8s)](https://kubernetes.io/)
- [Helm](https://helm.sh/)

<details>
<summary>Setting Up a Local Kubernetes Cluster (Optional)</summary>

If you don't have access to a Kubernetes cluster and don't want to use a cloud provider, you can set up a local Kubernetes cluster using tools like [Minikube](https://minikube.sigs.k8s.io/) or [Docker Desktop](https://www.docker.com/products/docker-desktop):

**Option 1: Minikube**

Minikube is a tool that sets up a single-node Kubernetes cluster locally. Follow the installation instructions for [Minikube](https://minikube.sigs.k8s.io/docs/start/) to set it up on your machine.

Once Minikube is installed, start the cluster:

```shell
minikube start
```

**Option 2: Docker Desktop (for macOS and Windows)**

If you're using macOS or Windows, you can use Docker Desktop to run a Kubernetes cluster. Ensure that you have [Docker Desktop](https://www.docker.com/products/docker-desktop) installed.

1. Open Docker Desktop.
2. Go to Preferences/Settings > Kubernetes.
3. Check the "Enable Kubernetes" option and click "Apply & Restart."

</details>

### Clone the Repository

```shell
git clone https://github.com/larsgkodehode/kube-pet.git
cd kube-pet
```

### Deploy with Docker Compose

```shell
docker compose up
```

### Deploy with Helm

1. Deploy the backend service:

   ```shell
   helm install kube-pet-api ./charts/kube-pet-api
   ```

2. Deploy the frontend:

   ```shell
   helm install kube-pet-frontend ./charts/kube-pet-frontend
   ```

### Access the Application

Once the deployment is complete, you can access the Kube Pet application:

- Frontend: [http://localhost:3000](http://localhost:3000)
- Backend API: [http://localhost:8080](http://localhost:8080)

### API Documentation

To explore the API endpoints and documentation, visit [Swagger UI](http://localhost:8080/swagger/index.html) for the backend API.

## Further Reading

- [Guide Home Lab Setup](https://github.com/ehlesp/smallab-k8s-pve-guide)
- [Blog from Kubernetes Operator](https://geek-cookbook.funkypenguin.co.nz/kubernetes/)
- [Kubernetes the hard way](https://github.com/kelseyhightower/kubernetes-the-hard-way)