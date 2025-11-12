variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "sg_names" {
    default = [
        # databases
        "mongodb", "redis", "mysql", "rabbitmq",
        # backend
        "catalogue", "user", "cart", "shipping", "payment",
        # frontend
        "frontend",
        # bastion
        "bastion",
        # frontend load balancer
        "frontend_lb",
        # backend ALB
        "backend_alb"
        
    ]
}

variable "zone_id" {
    default = "Z08088429XZJJZMETS6D"
}

variable "domain_name" {
    default = "rajkumardaws.space" #rajkumardaws.space
}