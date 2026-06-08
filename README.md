# Terraform AWS EC2 Nginx Deployment

## Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to provision an AWS EC2 instance and deploy a static landing page using Nginx.

## Technologies Used

* Terraform
* AWS EC2
* AWS Security Groups
* Nginx
* Git
* GitHub

## Architecture

Terraform → AWS EC2 → Nginx → Landing Page

## Features

* Automated EC2 instance provisioning
* Security Group configuration for SSH and HTTP access
* Automatic Nginx installation
* Landing page deployment from GitHub repository
* Infrastructure managed through Terraform

## Project Structure

```text
terraform-nginx-project/
├── main.tf
├── provider.tf
├── outputs.tf
├── variables.tf
├── .gitignore
└── README.md
```

## Deployment Steps

1. Clone the repository.
2. Configure AWS credentials.
3. Initialize Terraform.

```bash
terraform init
```

4. Review the execution plan.

```bash
terraform plan
```

5. Deploy infrastructure.

```bash
terraform apply
```

6. Access the landing page using the EC2 public IP address.

## Learning Outcomes
## AWS EC2 Instance

The EC2 instance provisioned using Terraform.

![EC2 Instance](images/Screenshot%202026-06-08%20171501.png)

## Landing Page Deployment

Static landing page successfully deployed on AWS EC2 using Nginx.

![Landing Page](images/Screenshot%202026-06-08%20171139.png)

* Infrastructure as Code with Terraform
* AWS EC2 provisioning
* Security Group management
* Nginx web server deployment
* Git and GitHub version control

## Author

Bikash Samal
DevOps Engineer
