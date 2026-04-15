### **Type**
Change Request  

### **Priority**
Medium  

### **Change Description**
Introduce a non-administrative user account (`devuser`) on the Linux VM to simulate real-world user access and enable testing of permission boundaries and access control.

### **Reason for Change**
The system was previously operating with a single administrative user, which does not reflect best practice. Introducing a standard user enables validation of least-privilege principles and user isolation.

### **Impact Assessment**
- No expected service downtime  
- Minimal risk to system stability  


### **Implementation Plan**
- Create new user account using `adduser`  
- Verify user login and environment setup  
- Test access restrictions (non-sudo behaviour)  
- Grant controlled elevated privileges (sudo group)  
- Validate access changes and system behaviour  

### **Rollback Plan**
- Remove user account using `deluser devuser` if required  
- Revert any unintended permission changes  

### **Execution**
- User account created successfully  
- Access tested under restricted permissions  
- Elevated privileges granted and verified  

### **Outcome**
- Multi-user environment established  
- Access control and permission testing enabled  
- System now better reflects real-world operational conditions  