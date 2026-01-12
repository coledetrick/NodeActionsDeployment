The goal of this project was to fully automate the setup, provisioning, and CICD or a ec2 instance hosting a Node.js app.
I used terraform to spin up an ec2 instance on AWS, configured secrets in my repo to be pulled into my workflow file for Actions. Then when the Actions workflow is triggered, it provisions the infrastructure needed to serve my app using nginx.
I learn quite a bit about Iac concepts, CICD, and most of all Linux permissions.

