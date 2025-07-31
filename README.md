
 🛡️ Secure and Scalable AWS Cloud Infrastructure (INFO2350 Group Project)

This project implements a secure and scalable AWS infrastructure using Terraform. It hosts a web application accessible via the internet and a backend MySQL database server that remains private and protected, following cloud architecture best practices.



 📦 Project Tasks

✅ Task 1: Architecture Diagram  
- Designed a custom VPC with public and private subnets  
- Included NAT Gateway, Internet Gateway, route tables, and security groups  
- Diagram illustrates all AWS services and network flows (see Task1 - Architectural Diagram.pdf)  

✅ Task 2: Manual Deployment (via AWS Console)  
- Launched EC2 instances for Web Server (in public subnet) and MySQL DB (in private subnet)  
- Configured routing, NAT access, and secure traffic flow between layers  
- Verified internet access on Web Server and update access for DB via NAT  

✅ Task 3: Infrastructure as Code (Terraform)  
- Automated the deployment of the full AWS architecture  
- Created Terraform files (main.tf, variables.tf, outputs.tf, provider.tf)  
- Used variables and outputs for flexibility and reusability  
- Verified infrastructure creation using terraform apply  

✅ Task 4: Security Considerations  
- DB server has no public IP and resides in private subnet  
- DB Security Group allows MySQL traffic (port 3306) only from Web Server Security Group  
- No direct internet access to DB (only via NAT Gateway)  
- Explained three key security challenges and solutions in security_report.pdf  



 🖼️ Architecture Diagram

Refer to the file: Task1 - Architectural Diagram.pdf for full AWS architecture layout.



 🧪 How to Use This Project

1. Clone the repository:
 
   https://github.com/Dhwanit14/aws-cloud-project.git
   cd aws-secure-infra


2. Review and update the variables in variables.tf if needed.

3. Initialize Terraform:
   bash
   terraform init
   

4. Apply the infrastructure:
   bash
   terraform apply
   

5. Verify resources in AWS Console (Learner Lab).



 📁 Project Structure


├── main.tf                   Main Terraform logic
├── variables.tf              Input variables
├── outputs.tf                Output values
├── provider.tf               AWS provider block
├── Task1 - Architectural Diagram.pdf    Architecture diagram (Task 1)
├── security_report.pdf       Security explanation (Task 4)
└── README.md                 Project overview and instructions




 🛡️ Security Summary

The architecture was designed with security in mind:
- Web server: Only public-facing component
- DB server: Private subnet only, no public IP
- Communication between Web and DB restricted to port 3306
- Internet access for updates via NAT Gateway only



 📚 Author & Course Info

- Name: Dhwanit Shah
- Course: INFO2350 – Advanced Cloud Infrastructure
- Project Type: Group Assignment
- Tools Used: AWS, Terraform
