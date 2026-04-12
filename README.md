#Saas Simulation Project
Infrastructure and SRE simulation project based on a growing SaaS migrating to the cloud

#Project Goal
To design, build, secure, monitor and automate a scalable cloud environment that reflects the responsibilities of a System Administrator

#Core Areas

Cloud Infrastructure: Microsoft Azure (VMs, Networking, NSGs)
Linux Administration: Ubuntu server management and hardening
Identity & Access Management: Azure AD (Entra ID), RBAC
Automation: Bash, PowerShell, Python
Monitoring & Observability: (Planned: Azure Monitor, Log Analytics)
Infrastructure as Code: (Planned: Terraform / Bicep)
Security & Backup: System hardening, access control, recovery strategies
Documentation: Operational runbooks and troubleshooting guide


Architecture (Current)
Single Ubuntu VM hosted in Azure:

Public access via HTTP (NGINX)
Secure SSH access using key-based authentication
Network controlled via Azure Network Security Group (NSG)

#Current Progress
Day 1
- Created an Azure resource group and deployed an Ubuntu VM
- Configured SSH key based access, disabling password login
- Inspected the system and applied upgrades to the system
- Installed and configured NGINX as a web server
- Configured Network Security Group on Azure to allow both SSH (port 22) and HTTP (port 80)
- Simulated a NGINX service failure and recovery
- Wrote a bash script that checks NGINX's status and restarts it when down



