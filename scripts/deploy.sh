#!/bin/bash
echo "Starting deployment to AWS EC2..."

ssh -i ~/CICD.pem ec2-user@13.200.169.238 << 'EOF'
  cd /var/www/app
  git pull origin main
  chmod +x restart.sh
  ./restart.sh
EOF

echo "Deployment complete!"
