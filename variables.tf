variable "access_key" {
  description = "The AWS access key."
}

variable "secret_key" {
  description = "The AWS secret key."
}

variable "region" {
  description = "The AWS region to create resources in."
  default = "eu-west-2"
}

variable "availability_zone" {
  description = "The availability zone"
  default = "eu-west-2b"
}

variable "ecs_cluster_name" {
  description = "The name of the Amazon ECS cluster."
  default = "jenkins"
}

variable "amis" {
  description = "Which AMI to spawn. Defaults to the AWS ECS optimized images."
  default = {
    us-east-1	      =	"ami-275ffe31"
    us-east-2	      =	"ami-62745007"
    us-west-1	      =	"ami-689bc208"
    us-west-2	      =	"ami-62d35c02"
    eu-west-1	      =	"ami-95f8d2f3"
    eu-west-2	      =	"ami-bf9481db"
    eu-central-1    = "ami-085e8a67"
    ap-northeast-1  = "ami-f63f6f91"
    ap-southeast-1	= "ami-b4ae1dd7"
    ap-southeast-2  = "ami-fbe9eb98"
    ca-central-1    =	"ami-ee58e58a"
  }
}

variable "instance_type" {
  default = "t2.medium"
}

variable "key_name" {
  default = "jenkins"
  description = "SSH key name in your AWS account for AWS instances."
}

variable "min_instance_size" {
  default = 1
  description = "Minimum number of EC2 instances."
}

variable "max_instance_size" {
  default = 2
  description = "Maximum number of EC2 instances."
}

variable "desired_instance_capacity" {
  default = 1
  description = "Desired number of EC2 instances."
}

variable "desired_service_count" {
  default = 1
  description = "Desired number of ECS services."
}

variable "s3_bucket" {
  default = "mycompany-jenkins"
  description = "S3 bucket where remote state and Jenkins data will be stored."
}

variable "restore_backup" {
  default = false
  description = "Whether or not to restore Jenkins backup."
}

variable "jenkins_repository_url" {
  default = "jenkins"
  description = "ECR Repository for Jenkins."
}
