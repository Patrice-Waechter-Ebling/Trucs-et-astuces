sudo su
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/microsoft-prod.gpg
curl https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc
curl -fsSL https://packages.microsoft.com/config/ubuntu/22.04/mssql-server-2025.list | sudo tee /etc/apt/sources.list.d/mssql-server-2025.list
sudo apt-get update
sudo apt-get install -y mssql-server
sudo /opt/mssql/bin/mssql-conf setup
systemctl status mssql-server --no-pager
sudo apt-get update
sudo apt-get install mssql-tools18 unixodbc-dev
sudo apt-get update
sudo apt-get install mssql-tools18
sudo apt-get update
sudo apt-get install mssql-server-agent
sudo systemctl restart mssql-server
sudo apt-get update
sudo apt-get install -y mssql-server-fts
curl https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc
sudo add-apt-repository "$(curl https://packages.microsoft.com/config/ubuntu/20.04/mssql-server-2022.list)"
sudo apt-get update
sudo apt-get install -y mssql-server-is
sudo /opt/ssis/bin/ssis-conf setup
export PATH=/opt/ssis/bin:$PATH
sudo apt-get install mssql-server-is
