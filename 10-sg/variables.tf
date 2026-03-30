variable "project_name" {
    default = "expense-app"
}

variable "environment" {
    default = "dev"
}

variable "sg_names" {
    default = [
        # Database
        "mysql",
        
        # Backend 
        "backend",

        # Backend_alb
        "backend_alb",

        # Frontend
        "frontend",

        # Bastion
        "bastion"
    ]
}