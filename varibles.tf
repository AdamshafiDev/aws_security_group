variable "project" {
    default = "roboshop"
  
}

variable "environment" {
    default = "dev"
  
}

variable "frontend_sg_name" {

    default = "fronend"
  
}

variable "sg_description" {
    default = "this is created port number"
  
}

variable "bastion_sg_name" {

    default = "bastion"
  
}

variable "bastion_sg_description" {
    default = "this is created for bastion sg group"
  
}