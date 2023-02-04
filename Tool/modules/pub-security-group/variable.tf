variable "sg_pb" {
  type        = string
  description = "public security group"
  default     = "public-sg"
}
# variable "https_port" {
#   type        = string
#   description = "TCP port for https"
#   default     = "443"
# }
# variable "ssh_port" {
#   type        = string
#   description = "TCP port for ssh"
#   default     = "22"
# }
# variable "es_dashboard" {
#   type        = string
#   description = "port for es"
#   default     = "9200"
# }

# variable "kibana_port" {
#   type        = string
#   description = "TCP port for kibana"
#   default     = "5601"
# }
# variable "logstash_port" {
#   type        = string
#   description = "TCP port for logstash"
#   default     = "5000"
# }
# variable "pb_sg_tags" {
#   default     = {}
#   description = "Public Security group tags for"
#   type        = map(string)
# }
variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID for vpc"
}
# variable "es_crossCluster_port" {
#      type        = string
#   description = "TCP port for es"
#   default     = "9200"
# }
# variable "es_crossCluster_port" {}

