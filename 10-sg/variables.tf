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

        # Frontend
        "frontend"
    ]
}