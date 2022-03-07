echo 'Baixando binário do kubectl.'
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

echo 'Validando binário baixado'
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(<kubectl.sha256)  kubectl" | sha256sum --check

echo 'Instalando o kubectl'
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

echo 'Mostrando versão instalada:'
kubectl version --client
