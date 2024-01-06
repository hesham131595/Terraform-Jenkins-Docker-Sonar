output "sg_id_value" {
  value = module.network.sg_id

}

output "Jenkins_ip_value" {

    value = module.ec2.Jenkins_ip
}