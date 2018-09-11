variable "vpc_name" {
  description = "Name of the VPC"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
}

################################################
# Optional variables
################################################
variable "public_subnets" {
  description = "List of CIDRs for public subnets"
  default     = []
}

variable "private_subnets" {
  description = "List of CIDRs for private subnets"
  default     = []
}

variable "database_subnets" {
  description = "List of CIDRs for database subnets"
  default     = []
}

variable "intra_subnets" {
  description = "List of CIDRs for intra subnets"
  default     = []
}

variable "eip_count" {
  description = "Number of EIP for the gateways. This should be eqaual to the number of AZs if you have any private subnets"
  default     = 0
}

variable "additional_allowed_cidr_blocks" {
  description = "Additional 'safe' CIDR blocks for internal traffic"
  default     = []
}

variable "ephemeral_from" {
  description = "Lower end of the port range for ephemeral traffic"
  default     = 1024
}

variable "ephemeral_to" {
  description = "Lower end of the port range for ephemeral traffic"
  default     = 65535
}