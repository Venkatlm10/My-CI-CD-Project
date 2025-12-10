sudo apt update
sudo apt install fontconfig openjdk-21-jre
java --version
sudo systemctl restart networkd-dispatcher.service
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]"   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
ping localhot
ping localhost
cat /var/lib/jenkins/secrets/initialAdminPassword
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
mvn --version
mvn -version
sudo apt install maven
mvn -version
wget https://dlcdn.apache.org/maven/maven-3/3.9.11/binaries/apache-maven-3.9.11-bin.tar.gz -P /tmp
sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt
sudo ln -s /opt/apache-maven-[version] /opt/maven
sudo ln -s /opt/apache-maven-3.9.11 /opt/maven
sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.9.11 /opt/maven
wget https://dlcdn.apache.org/maven/maven-3/3.9.11/binaries/apache-maven-3.9.11-bin.tar.gz -P /tmp
mvn -version
wget https://dlcdn.apache.org/maven/maven-3/3.9.11/binaries/apache-maven-3.9.11-bin.tar.gz -P /tmp
sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.9.11 /opt/maven
sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.9.11 /opt/maven
sudo nano /etc/profile.d/maven.sh
mvn -version
wget https://dlcdn.apache.org/maven/maven-3/3.9.11/binaries/apache-maven-3.9.11-bin.tar.gz -P /tmp
sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.9.11 /opt/maven
wget https://dlcdn.apache.org/maven/maven-3/3.9.11/binaries/apache-maven-3.9.11-bin.tar.gz -P /tmp
sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.9.11 /opt/maven
ls -l /opt/maven
sudo rm /opt/maven
sudo ln -s /opt/apache-maven-3.9.11 /opt/maven
mvn -version
sudo ln -s /opt/apache-maven-3.9.11 /opt/maven
sudo nano /etc/profile.d/maven.sh
sudo chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh
mvn -version
sudo apt update
sudo apt install default-jdk -y
readlink -f /usr/bin/java | sed "s:/bin/java::"
sudo nano /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh
mvn -version
ping localhost
mvn -version
mvn --version
ping localhost
sudo systemctl status jenkins
ping localhost
cd /var/lib/jenkins
ls
cd /var/lib/jenkins/ .m2
cd ..
cd /jenkins
ls
cd ..
cd
cd /var/lib/jenkins/ .m2
cd /var/lib/jenkins/.m2
ls
cd ..
ls
cd workspace\
mvn -version
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo apt install -y git maven docker.io
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
