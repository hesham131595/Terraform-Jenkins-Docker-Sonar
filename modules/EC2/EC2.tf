resource "aws_instance" "Jenkins" {
  ami           = "ami-0c7217cdde317cfec" // ami in launch instance (ami-074cce78125f09d61) 
  instance_type = "t2.large"
  availability_zone = "us-east-1a"
  key_name = "jenkins-key"
  vpc_security_group_ids = var.sg_id_op

  tags = {
    Name = "Jenkins-server"   // there is no need to create tags 
  }

  connection {
    type     = "ssh"
    user     = "ubuntu" # or your SSH user
    private_key = file("./jenkins-key.pem")
    host     = self.public_ip
  }

  provisioner "file" {
    # source      = "./install/install-jenkins/install-jenkins.sh"
    # destination = "/tmp/install-jenkins.sh"
    source = "./install/"
    destination = "/tmp/"
  }


  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sleep 30",
      "sudo apt-get install dos2unix -y",
      "sudo apt-get install dos2unix -y",
      "sudo chmod +x /tmp/install-jenkins/install-jenkins.sh",
      "sudo dos2unix /tmp/install-jenkins/install-jenkins.sh",
      "sudo /tmp/install-jenkins/install-jenkins.sh",

      "sudo chmod +x /tmp/install-docker/docker-install.sh",
      "sudo dos2unix /tmp/install-docker/docker-install.sh",
      "sudo /tmp/install-docker/docker-install.sh",

      "sudo chmod +x /tmp/install-sonar/sonar-install.sh",
      "sudo dos2unix /tmp/install-sonar/sonar-install.sh",
      "sudo /tmp/install-sonar/sonar-install.sh"
      # "sudo apt-get update",
      # "sudo apt-get install -y docker.io",
      # "sudo usermod -aG docker jenkins",
      # "sudo usermod -aG docker ubuntu",
      # "sudo systemctl restart docker"
    ]
  }

  

}