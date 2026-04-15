\# System Runbook



\## Daily Checks

\- Run health check script

\- Verify NGINX is active

\- Review logs



\## Incident Response

1\. Check service status:

&#x20;  systemctl status nginx



2\. Check logs:

&#x20;  tail -n 20 /var/log/nginx/error.log



3\. Restart service:

&#x20;  sudo systemctl start nginx



4\. Verify:

&#x20;  systemctl is-active nginx



\## Automation

\- daily\_check.sh

\- check\_nginx.sh

