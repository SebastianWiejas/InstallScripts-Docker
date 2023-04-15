echo "1. Stanard sudo update"
sudo apt-get update

echo "2. Install prerequesites"
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg

echo "3. Add docker official gpg key"
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo "4. Set uo docker repository"
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
echo "5. Standard sudo update to get info about dockers repo"
sudo apt-get update

echo "6. Install docker engine"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "7. Verify installation"
sudo docker run hello-world
