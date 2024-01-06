module "network" {
  source = "./modules/Network"
}

module "ec2" {
  source = "./modules/EC2"
  # depends_on = [module.network]
  sg_id_op = module.network.sg_id
  
}
module "EKS" {
  
  source = "./modules/EKS"

}