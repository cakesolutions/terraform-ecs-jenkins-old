provider "aws" {
  region = "${var.region}"
}

resource "aws_ecr_repository" "jenkins" {
  name = "${var.jenkins_image_name}"
  provisioner "local-exec" {
    command = "./deploy-image.sh ${self.repository_url} ${var.jenkins_image_name}"
  }
}

variable "jenkins_image_name" {
  default = "cakesolutions/jenkins"
  description = "Jenkins image name."
}

variable "region" {
  default = "eu-west-2"
}
