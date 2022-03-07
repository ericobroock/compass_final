# Instalando o docker
echo "Iniciando a instalação do docker."
echo "Realizando update."
sudo yum update -y
echo "Instalando yum-utils."
sudo yum install -y yum-utils
echo "Inserindo caminho para repositório do docker."
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum update -y
echo "Instalando o docker."
sudo yum -y install docker-ce docker-ce-cli containerd.io 
sudo systemctl start docker
sudo systemctl enable docker
echo "Registrando o usuário vagrant para utilizar o docker."
sudo groupadd docker
sudo usermod -aG docker vagrant
newgrp docker
echo "Finalização da instalação do docker."

# Puxando a imagem do hadolint
#docker pull hadolint/hadolint 

