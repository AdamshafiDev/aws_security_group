variable "project" {
    type    = string
    default = "roboshop"
  
}

variable "environment" {
    type    = string
    default = "dev"
  
}

variable "frontend_sg_name" {
    type    = string

    default = "frontend"
  
}

variable "sg_description" {
    type    = string
    default = "this is created port number"
  
}

variable "bastion_sg_name" {
    type    = string

    default = "bastion"
  
}

variable "bastion_sg_description" {
    type    = string
    default = "this is created for bastion sg group"
  
}
