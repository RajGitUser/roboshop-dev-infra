variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "project_name"{
    default = "roboshop"
}

variable "environment"{
    default = "dev"
}

variable "vpc_tags" {
    default = {
        Purpose = "vpc-module-test"
        DontDelete = true
    }
}

variable "subnet_public_cidrs" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "subnet_private_cidrs" {
    default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "subnet_database_cidrs" {
    default = ["10.0.21.0/24", "10.0.22.0/24"]
}