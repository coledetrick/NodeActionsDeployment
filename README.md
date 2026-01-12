# NodeActionsDeployment

Automation for provisioning an ec2 and deploying a Node.js app using **Ansible**, **Terraform** and **GitHub Actions (CI/CD)**.

The goal of this project is to fully automate:
1) infrastructure setup and remote state locking with Terraform & s3,
2) secure config via GitHub Secrets,
3) server setup (including nginx),
4) application deployment triggered by GitHub Actions.  

---

## What’s in this repo

- `.github/workflows/` — GitHub Actions workflow(s) to run provisioning/deploy steps. 
- `Terraform/` — Infrastructure-as-Code for AWS resources (EC2, networking/security, etc.). 
- `Ansible/` — Configuration management (server packages, permissions, nginx setup, app runtime setup). 
- `app.js` / `package.json` — The Node.js app being deployed.

---

## Architecture (high level)

**Push to repo triggers -> GitHub Actions runs -> Terraform provisions/updates AWS infra -> Ansible configures EC2 -> nginx serves the Node app**

Key ideas:
- **IaC** keeps infrastructure repeatable and versioned.
- **Secrets** are stored in GitHub, not in code.
- **Permissions & ownership** matter (nginx + app user + deployment paths). 

---

What I learned / why this exists
This project is a practical sandbox for CI/CD + IaC fundamentals, with extra emphasis on:
- Wiring secrets into workflows securely, and practicing good modularity principles.
- Automating Linux host configuration.
- Understanding real-world permission boundaries (nginx, users, deploy paths).
