\#Saas Simulation Project
Infrastructure and SRE simulation project based on a growing SaaS migrating to the cloud

\#Project Goal
To design, build, secure, monitor and automate a scalable cloud environment that reflects the responsibilities of a System Administrator

\#Core Areas

Cloud Infrastructure: Microsoft Azure (VMs, Networking, NSGs)
Linux Administration: Ubuntu server management and hardening
Identity \& Access Management: Azure AD (Entra ID), RBAC
Automation: Bash, PowerShell, Python
Monitoring \& Observability: (Planned: Azure Monitor, Log Analytics)
Infrastructure as Code: (Planned: Terraform / Bicep)
Security \& Backup: System hardening, access control, recovery strategies
Documentation: Operational runbooks and troubleshooting guide



Architecture (Current)
Single Ubuntu VM hosted in Azure:

Public access via HTTP (NGINX)
Secure SSH access using key-based authentication
Network controlled via Azure Network Security Group (NSG)

\#Current Progress


Day 1

* Created an Azure resource group and deployed an Ubuntu VM
* Configured SSH key based access, disabling password login
* Inspected the system and applied upgrades to the system
* Installed and configured NGINX as a web server
* Configured Network Security Group on Azure to allow both SSH (port 22) and HTTP (port 80)
* Simulated a NGINX service failure and recovery
* Wrote a bash script that checks NGINX's status and restarts it when down



\### Day 2

\- Performed real-time log monitoring and analysed HTTP response codes (200, 404)

\- Simulated incident lifecycle: detection → investigation → resolution → validation

\- Introduced structured ticketing approach aligned with ITIL practices and created templates         for each ticket type

\- Implemented multi-user system:

&#x20; - Created non-admin user (`devuser`)

&#x20; - Tested permission boundaries and access restrictions

&#x20; - Applied least privilege principles via sudo group

\- Developed system health monitoring script (`daily-checkup.sh`) to check:

&#x20; - CPU load (uptime)

&#x20; - Memory usage

&#x20; - Disk usage

&#x20; - Service status (NGINX)

\- Added basic alert logic for service failure detection to both daily-checkup.sh and nginx-health-check.sh

\- Simulated daily sysadmin workflow (health checks, incident handling, validation)

\- Organised system structure:

&#x20; - Centralised scripts in `\~/Project-Scripts`

&#x20; - Standardised execution and permissions

\- Created operational runbook documenting:

&#x20; - Daily checks

&#x20; - Incident response procedures

&#x20; - Automation usage

