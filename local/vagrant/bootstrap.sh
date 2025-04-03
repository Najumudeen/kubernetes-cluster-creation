sudo apt-get update
sudo apt-get -y install docker.io
sudo systemctl enable docker
sudo systemctl status docker
sudo systemctl start docker
sudo apt-get -y install curl
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list

sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt-get install kubeadm=1.26.0-00 kubelet=1.26.0-00 kubectl=1.26.0-00
sudo apt-mark hold kubeadm kubelet kubectl
sudo kubeadm version
sudo swapoff -a