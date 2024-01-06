output "Jenkins_ip" {

    value = aws_instance.Jenkins.public_ip
}