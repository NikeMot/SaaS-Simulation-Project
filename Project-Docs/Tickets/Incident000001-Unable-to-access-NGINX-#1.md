### **Type**
Incident  

### **Priority**
High

### **Service Affected**
NGINX Web Service

### **Description**
Users were unable to connect to NGINX using the public IP address

### **User Impact**
The web service was unavailable externally, giving the impression of an outage

### **Symptoms Observed**
The browser page would time out when attempting to visit the public IP address
This was persistent, even after refreshing the page.

### **Investigation**
-Confirmed NGINX was running correctly using `systemctl status nginx`
-Verified that port 80 was configured on Azure NSG
-Verified port 80 was listeing by using `sudo ss -tulnp | grep 80`
-Navigated to the VM's localhost address using `curl http://localhost`. 
This output the NGINX welcome message as expected


### **Root Cause**
The browser was attempting to connect to the VM via HTTPS rather than HTTP

### **Resolution**
Changed the URL to http:// rather than https://

### **Outcome**
System verified to be working 