# NodeActionsDeployment

Automation for provisioning an ec2 and deploying a Node.js app using **Ansible**, **Terraform** and **GitHub Actions (CI/CD)**.

The goal of this project is to fully automate:
1) infrastructure setup with Terraform,
2) secure config via GitHub Secrets,
3) server setup (including nginx),
4) application deployment triggered by GitHub Actions.  

---

## What’s in this repo

- `.github/workflows/` — GitHub Actions workflow(s) to run provisioning/deploy steps. :contentReference[oaicite:2]{index=2}
- `Terraform/` — Infrastructure-as-Code for AWS resources (EC2, networking/security, etc.). :contentReference[oaicite:3]{index=3}
- `Ansible/` — Configuration management (server packages, permissions, nginx setup, app runtime setup). :contentReference[oaicite:4]{index=4}
- `app.js` / `package.json` — The Node.js app being deployed. :contentReference[oaicite:5]{index=5}

---

## Architecture (high level)

**Push to repo triggers -> GitHub Actions runs -> Terraform provisions/updates AWS infra -> Ansible configures EC2 -> nginx serves the Node app**

Key ideas:
- **IaC** keeps infrastructure repeatable and versioned.
- **Secrets** are stored in GitHub, not in code.
- **Permissions & ownership** matter (nginx + app user + deployment paths). :contentReference[oaicite:6]{index=6}

---

What I learned / why this exists
This project is a practical sandbox for CI/CD + IaC fundamentals, with extra emphasis on:
- Wiring secrets into workflows securely, and practicing good modularity principles.
- Automating Linux host configuration.
- Understanding real-world permission boundaries (nginx, users, deploy paths).
