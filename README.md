DevOps Project: End-to-End CI/CD Pipeline Implementation

Project Overview:

This project aimed to automate the Continuous Integration and Continuous Deployment (CI/CD) process using a full stack of DevOps tools. The goal was to build an end-to-end pipeline where code changes are automatically built, tested, deployed, and monitored — from development to production — with minimal manual intervention.

Business Challenge / Objective:

The main business challenge we addressed was automating the entire software delivery process. The requirement was:

 As soon as the developer pushes code to the GitHub master branch, the pipeline should:

•	Checkout and build the code.
•	Package the application.
•	Containerize it using Docker.
•	Provision infrastructure on-the-fly using Terraform.
•	Configure it automatically using Ansible.
•	Deploy to a test environment.
•	If tests pass, automatically deploy to production.
•	Monitor both environments (test & prod) using Prometheus and Grafana.

Step-by-Step Workflow:

Code Push & Trigger:

•	Developer pushes code to the `master` or 'main' branch on GitHub.
•	This action triggers a Jenkins pipeline using a webhook integration.

Build Stage (CI):

•	Jenkins pulls the latest code.
•	Maven compiles the code, runs unit tests, and packages it into a `.jar` file.
•	If the build or test fails, Jenkins aborts the pipeline and sends a notification.

Containerization:

•	Jenkins uses a Dockerfile to containerize the application.
•	The Docker image is tagged with the build number and pushed to Docker Hub (or a private registry).
•	The Docker image is pulled onto the test server.
•	A container is launched running the new version of the application.
•	Docker container is deployed with the latest stable image.

 Monitoring Setup:

    Prometheus is installed on a monitoring node and configured to scrape metrics from both test and prod servers.
    Metrics include:
•	CPU usage
•	Disk usage
•	Memory utilization

    Grafana is connected to Prometheus as a data source and dashboards are created to visualize these metrics in real-time.
