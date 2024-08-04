#/bin/env bash
sudo yum update -y && sudo yum upgrade -y
find  /home/vagrant/scripts/ -type f -name "*.sh"  | xargs chmod +x