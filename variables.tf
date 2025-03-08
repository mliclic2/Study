variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-2"
}

variable "vpc_id" {
  description = "VPC ID for EKS"
  type        = string
}

variable "subnet_ids" {
  description = "List of Subnet IDs for EKS and ALB (퍼블릭 서브넷 추천)"
  type        = list(string)
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "keycloak-cluster"
}

variable "db_username" {
  description = "Database username for Keycloak"
  type        = string
  default     = "keycloakuser"
}

variable "db_password" {
  description = "Database password for Keycloak"
  type        = string
  sensitive   = true
}

variable "route53_zone_id" {
  description = "Route 53 Hosted Zone ID"
  type        = string
}

variable "domain_name" {
  description = "Keycloak에 사용할 도메인 (예: keycloak.example.com)"
  type        = string
}
