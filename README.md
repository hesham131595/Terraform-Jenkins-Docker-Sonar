# **Automate your pipeline using Terraform-Jenkins-Docker-Sonar-Project**


![Uploading image.png…]()


# **Prerequisites**

- An AWS account with appropriate permissions to create resources.
- Create your AK/SK keys.
- Create access key for the resources.
- Installation of Terraform and Git locally.

# **Usage**

# **Fork this Repo**

Fork the repository by clicking the "Fork" button on the top right corner of this page. This will create a copy of the repository under your GitHub account.

# **Clone this Repo**

Clone the forked repository to your local machine using the following command:

```bash
git clone https://github.com/<your-username>/DevOps_project.git
```

Change the working directory to the cloned repo:

```bash
cd Terraform-Jenkins-Docker-Sonar
```

put your access key  in the same directory 

run the below commands to start creating your infra


```bash
terraform init 

terraform apply --auto-approve
```

provide your access and secret keys


![image](https://github.com/hesham131595/Terraform-Jenkins-Docker-Sonar/assets/93712347/485ee82e-06a0-4cd8-9153-cf35535f39a8)


After creation finished you can find EC2 IP

Now you can access Jenkins through EC2IP:8080

And access Sonarqube through EC2IP:9000
