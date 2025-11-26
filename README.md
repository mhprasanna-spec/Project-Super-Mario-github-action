# $$\color{green}{\textbf Project: 🎮 \color{red} \textbf {Super} \ \color{orange} \ \textbf Mario  \ \textbf Bros 🍄🐢}$$

##  $\color{blue} \textbf {Project  Workflow}$
Step 1 → Login and basics setup

Step 2 → Setup Docker ,Terraform ,aws cli , and Kubectl

Step 3 → IAM Role for EC2

Step 4 →Attach IAM role with your EC2

Step 5 → Building run github action workflow on main.yaml




### $\color{red} \textbf {Step 1 → Login  and  basics  setup}$
1. Click on launch Instance
  ![instance](./.Images/navigate_to_ins_create.png)
2. Connect to EC2-Instance

   
5. Attach role to ec2 instance

### $\color{red} \textbf {Step 2 → Setup  Tools}$

````
sudo apt update -y
````
$\color{blue} \textbf {Setup  Docker:}$
````
sudo apt install docker.io -y
sudo systemctl start docker
sudo usermod -aG docker ubuntu
newgrp docker
docker --version
````
````
sudo yum install docker -y
sudo systemctl start docker
sudo usermod -aG docker ec2-user
newgrp docker
docker --version
````

$\color{blue} \textbf {Setup Terraform:Ubuntu}$
````
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

````
- Amazon linux
````
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum install terraform -y
````
${\color{blue} \textbf {Setup  AWS CLI:}}$
````
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip 
unzip awscliv2.zip
sudo ./aws/install
aws --version

````

## ${\color{blue} \textbf {Install kubectl}}$
Download the latest release with the command:
````
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
````

Install kubectl:
````
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
````
Note:
If you do not have root access on the target system, you can still install kubectl to the ~/.local/bin directory:
````
chmod +x kubectl
mkdir -p ~/.local/bin
mv ./kubectl ~/.local/bin/kubectl
````
````
kubectl version --client
````
### $\color{red} \textbf {Step 3 → IAM  Role  for  EC2}$
create role:
![role](./.Images/IAM_Role_1.png)

### $\color{red} \textbf {Step 4 →Attach  IAM  role  with your  EC2 }$
go to EC2 
click on actions → security → modify IAM role option
- administrator access
- eks
![image](./.Images/IAM_Role_Policies.png)
![role-ec2](./.Images/Modify_IAM_Role.png)
![modify-role](./.Images/Modify_IAM_Role2.png)
### $\color{red} \textbf {Step 5 → Building Infrastructure github action workflow on main.yaml


## navigate to github action 
crreate workflow 
<img width="1094" height="197" alt="Screenshot 2025-11-26 at 4 56 34 PM" src="https://github.com/user-attachments/assets/529af49a-72e6-4c4c-a789-bcdc82dade0e" />


## chose workflow and create 
<img width="1124" height="144" alt="Screenshot 2025-11-26 at 4 57 18 PM" src="https://github.com/user-attachments/assets/1594c66f-b8b3-4494-b5f5-92d9424c38bf" />


## Write main.yaml file 
<img width="1459" height="384" alt="Screenshot 2025-11-26 at 4 58 02 PM" src="https://github.com/user-attachments/assets/0e5e0598-969d-4ec6-8946-d7bc10efcc87" />
[main.yaml](./.github/workflows/main.yml)

check for the code is running in github_action -->main.yaml 
<img width="900" height="87" alt="Screenshot 2025-11-26 at 5 00 35 PM" src="https://github.com/user-attachments/assets/5d03f9fe-96cc-44c5-9d96-6dfc4704fff2" />


## to destroy the workflow 
write destroy workflow file 
<img width="906" height="88" alt="Screenshot 2025-11-26 at 5 02 07 PM" src="https://github.com/user-attachments/assets/38eaee21-1c5c-4774-884a-bbf4bc5936fc" />










