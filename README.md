#### 
first you need to create an account on AWS and get AK/SK

create access key in EC2 

run git clone https://github.com/hesham131595/Terraform-Jenkins-Docker-Sonar.git

cd Terraform-Jenkins-Docker-Sonar

add your ec2.pem key


1- terraform init 

2- terraform apply --auto-approve 

please provide your access key and secret key 

![image](https://github.com/hesham131595/Terraform-Jenkins-Docker-Sonar/assets/93712347/485ee82e-06a0-4cd8-9153-cf35535f39a8)



# **Prerequisites**

- An AWS account with appropriate permissions to create resources.
- Create your AK/SK keys.
- Create access key for the resources.
- Installation of Terraform and Git locally.

# **Usage**

Fork this Repo
Fork the repository by clicking the "Fork" button on the top right corner of this page. This will create a copy of the repository under your GitHub account.

Clone this Repo
Clone the forked repository to your local machine using the following command:

git clone https://github.com/<your-username>/DevOps_project.git
Change the working directory to the cloned repo, then run the Bash script to build the infrastructure:

cd DevOps-project
bash infrastructure.sh

- git clone my repo in your local PC
- cd **Terraform-Jenkins-Docker-Sonar**
- put your access key
- run the below commands to start creating your infra


terraform init 

terraform apply --auto-approve
```

- provide your access and secret keys
