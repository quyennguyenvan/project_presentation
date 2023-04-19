variable "tags" {
  description = "Tags to be applied to resources."
  type        = map(string)
  default = {
    "Created by" = "QuyenNV"
    "Project" = "ILTestLAB"
    "Name" = "TL_LAB_TEST"
    "Evn" = "Dev"
  }
}
variable "prefix"{
    description = "The default prefix of name for project"
    type = string
    default = "IFTESTLAB"
}
variable "aws-linux2" {
    default = "ami-0b276ad63ba2d6009"
}
variable "instancesize" {
    default = "t2.medium"
}
variable "SSH_IP_ADMIN_ALLOW"{
    default = "183.81.127.210/32"
}

variable "azonea"{
    default = "ap-northeast-1a"
}
variable "azonec"{
    default = "ap-northeast-1c"
}
variable "vpc_cidr"{
    default = "10.10.0.0/16"
}
variable "azonea_instance_cidr"{
    default = "10.10.1.0/24"
}
variable "azonec_instance_cidr"{
    default = "10.10.2.0/24"
}
variable "azonea_db_cidr"{
    default = "10.10.3.0/24"
}
variable "azonec_db_cidr"{
    default = "10.10.4.0/24"
}

variable "aws_key_pair_public" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCfXoiN/ta7XRYH86aQIlL1Qgga0J4JDAu+zeYv08rqCopqq1Rl/oy3FJ50Wx4DJkK0MtPZ09+RxbxhMGPpnJPYMsg8w4FPopbmBvRAb8NlyPEYRP0zb+DxHqDrki8ZaGuylAXt/w5E4fJ22CC96UoQDElKi04/Nc2T1MooM1+fA/SwY9FJn+g9iqQpjNnWOiW8HtSALFwLKn9TJ5BnjMeVrdPi+8TWsX/zWmjpyaONzu3dxLN8nVqG6A6OVrcLp8RVcxMZScpE439f8DU2gjOlpvKgiDgf7BkopcQYtY9xFeJQVRwx5BkgyB10zoAohz3TmA7tjC5ozNaGA08POqe/ rsa-key-20210816"
}

variable "public_key_passphrase" {
  default = "123@abc"
}

#for rds postgresql config
variable username{
    description = "The default username for rds"
    type = string
    default = "zerotrustAdmin"
}
variable "identifier_db"{
    description = "The default init of db instance"
    type = string
    default = "il-db-init"
}
variable "enginedb" {
    description = "The type of db instance"
    type = string
    default = "postgres"
}   
variable "db_name" {
  description = "The default name of db instance"
  type = string
  default = "ildb"
}
variable "engine_version" {
  description = "The default of engine"
  type = string
  default = "13.3"
}
variable "instance_class" {
  description = "The default type of rds instance"
  type = string
  default = "db.t3.micro"
}

variable "db_port" {
    description = "The default port of rds portgres"
    type = number
    default = 5432
}

variable "allocated_storage" {
    description = "The size of storage for db instane. unit Gb"
    type = number
    default = 20
}
variable "max_allocated_storage" {
    description = "The maximum size of storage for db instane. unit Gb"
    type = number
    default = 100
}
variable "storage_type" {
    description = "The type of disk of storage (SSD or megatic)"
    type =  string
    default = "gp2"
}

variable "availability_zone" {
    description = "The az for rds instace"
    type = string
    default = "ap-northeast-1a"
}

variable "skip_final_snapshot" {
  type        = bool
  default     = true
  description = "RDS skip final snapshot. (for production change to false, for dev change to true for quickly delete the infra)"
}

variable "publicly_accessible" {
  description = "Enable for public access or not"
  type = bool
  default = false
}

variable "parameter_group_family" {
    description = "The family of the instance db"
    type = string
    default = "postgres13"
}

variable "parameter_group_name_description" {
    description = "The default parameter group for rds instance"
    type = string
    default = "The default parameter group for rds instance"
}

variable "multi_az" {
    description = "Multi az deployment for rds instance"
    type = bool
    default = false
}

variable "apply_immediately" {
  type        = bool
  default     = true
  description = "Apply changes immediately."
}

variable "monitoring_interval" {
  type        = number
  default     = 60
  description = "Monitoring interval."
}

#condition running variable
variable "enable_ec2_module" {
    type = bool
    default = true
}

variable "enable_s3_module" {
    type  = bool
    default = true
}

variable "enable_ecr_module" {
    type  = bool
    default = true
}

variable "enable_postgresql_module" {
    type = bool
    default = true
}