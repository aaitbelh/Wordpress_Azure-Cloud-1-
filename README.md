# WordPress Deployment on Azure with Ansible and Terraform

This project automates the deployment of a WordPress site on Azure using Ansible and Terraform. It sets up the necessary infrastructure, installs Docker and Docker Compose, and configures the WordPress environment.

## Project Structure

```
Wordpress_Azure/
├── README.md
├── playbook/
│   ├── playbook.yml
│   ├── vars.yml
│   └── inventory/
│       └── hosts
├── Terraform/
│   ├── main.tf
│   ├── terraform.auto.tfvars
│   ├── terraform.tfstate
│   └── terraform.tfstate.backup
```

### Key Files

- **playbook/playbook.yml**: Ansible playbook to install Docker, Docker Compose, and configure the WordPress environment.
- **Terraform/main.tf**: Terraform configuration file to provision Azure resources.
- **vars.yml**: Variables used in the Ansible playbook.
- **inventory/hosts**: Ansible inventory file specifying target hosts.

## Prerequisites

1. **Azure Account**: Ensure you have an active Azure subscription.
2. **Terraform**: Install Terraform on your local machine.
3. **Ansible**: Install Ansible on your local machine.
4. **GitHub Token**: A personal access token to clone private repositories.

## Setup Instructions

### Step 1: Provision Azure Infrastructure

1. Navigate to the `Terraform/` directory:
   ```bash
   cd Terraform
   ```
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Apply the Terraform configuration to provision resources:
   ```bash
   terraform apply
   ```

### Step 2: Configure the Server with Ansible

1. Navigate to the `playbook/` directory:
   ```bash
   cd playbook
   ```
2. Update the `vars.yml` file with the required variables (e.g., `github_token`).
3. Run the Ansible playbook:
   ```bash
   ansible-playbook -i inventory/hosts playbook.yml
   ```

## Features

- **Automated Infrastructure**: Uses Terraform to provision Azure resources.
- **Dockerized WordPress**: Installs Docker and Docker Compose to run WordPress in containers.
- **Customizable**: Easily configurable through `vars.yml` and Terraform variables.

## Notes

- Ensure the `github_token` variable is set in `vars.yml` to allow cloning of private repositories.
- The playbook assumes Ubuntu as the target operating system.

## Troubleshooting

- **SSH Connection Issues**: Ensure the target server is accessible via SSH and listed in the `inventory/hosts` file.
- **Terraform Errors**: Check the `terraform.tfstate` file for the current state of resources.
- **Ansible Playbook Failures**: Use the `-vvv` flag for verbose output to debug issues.