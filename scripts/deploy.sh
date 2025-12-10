#!/bin/bash
echo "Starting deployment to AWS EC2..."

ssh -i ~/.ssh/id_rsa ubuntu@<13.200.169.238> << 'EOF'
  cd /var/www/app
  git pull origin main
  ./restart.sh
EOF

echo "Deployment complete!"
