resource "aws_security_group" "sg_pb" {
  name        = var.sg_pb
  description = "security group"
  vpc_id      = var.vpc_id

  ingress {
    description = "Traffic from VPC"
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Traffic from VPC"
    from_port   =  "22"
    to_port     =  "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "port for es"
    from_port   =  "9200"
    to_port     =  "9200"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "port for kibana"
    from_port   =  "5601"
    to_port     =  "5601"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "port for logstash"
    from_port   =  "5000"
    to_port     =  "5000"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # ingress {
  #   description = "port for es-rest-api"
  #   from_port   = var.es_restAPI_port
  #   to_port     = var.es_restAPI_port
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }
  # ingress {
  #   description = "port for os-crossCluster-search "
  #   from_port   = var.es_crossCluster_port
  #   to_port     = var.es_crossCluster_port
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  # tags = var.pb_sg_tags
}
