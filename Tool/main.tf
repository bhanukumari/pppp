module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}

module pub-subnet {
  source = "./modules/pub-subnet"
  #count = 2
  pub_subnet_cidr = var.pub_subnet_cidr
  vpc_id = module.vpc.vpc_id
  subnet_az = var.subnet_az
}

module pri-subnet {
  source = "./modules/pri-subnet/"
  #count = 2
  pri_subnet_cidr = var.pri_subnet_cidr
  vpc_id = module.vpc.vpc_id
  pri_subnet_az = var.pri_subnet_az
}

module igw {
  source = "./modules/igw"
  vpc_id = module.vpc.vpc_id
}

module route_table {
  source = "./modules/route-table"
  vpc_id = module.vpc.vpc_id
  pub_subnet_id = module.pub-subnet.pub_subnet_id
  igw_id = module.igw.igw_id
}

module "Nat" {
  source   = "./modules/nat-gw"
  nat-gw = var.nat-gw
  pub_subnet_id = module.pub-subnet.pub_subnet_id

}

module "pvt_rtb" {
  source                  = "./modules/pri-route-table"
  vpc_id                  = module.vpc.vpc_id
  igw_id                  = module.igw.igw_id
  private_routeTable_tags = var.private_routeTable_tags
}

module "pb_sg" {
  source     = "./modules/pub-security-group"
  sg_pb      = var.sg_pb
  vpc_id     = module.vpc.vpc_id
  # pb_sg_tags = var.pb_sg_tags
  # es_crossCluster_port = var.es_crossCluster_port
}

# module "pvt_sg" {
#   source      = "./modules/pri-security-group"
#   sg_pvt      = var.sg_pvt
#   vpc_id      = module.vpc.vpc_id
#   cidr        = var.cidr_block
#   pvt_sg_tags = var.pvt_sg_tags
# }

# module "access_key" {
#   source   = "./modules/keypair"
#   key_name = var.access_key
#   key_path = var.key_path
# }
module "ec2_instance" {
  source = "./modules/instance"
  pub_subnet_id = module.pub-subnet.pub_subnet_id
  # pub-security-group = module.pub-security-group
  sg_id = module.pub-security-group.sg_id
  security_group_id = module.pb_sg.security_group_id
  ami           = var.ami      
  instance_type 	        	= var.instance_type      
  key_name      = var.key_name
  instance_Name = var.instance_Name
}







