#!/bin/bash

# Deploy Docker image to server
#docker-compose up -d
#!/bin/bash

# This script performs the deployment steps for your application

# Navigate to project directory
cd https://github.com/palaniappanskm/dev.git

# Example: Copy build artifacts to the deployment directory on the server using SCP
scp -r build/ user@server: http://server_ip:8080

# Example: Restart the application server
ssh user@server "sudo systemctl restart your_application_service"

