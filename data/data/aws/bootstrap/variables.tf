variable "ami" {
  type        = "string"
  description = "The AMI ID for the bootstrap node."
}

variable "associate_public_ip_address" {
  default     = false
  description = "If set to true, public-facing ingress resources are created."
}

variable "bucket" {
  type        = "string"
  description = "The S3 bucket name or ID for bootstrap ignition file."
}

variable "cluster_name" {
  type        = "string"
  description = "The name of the cluster."
}

variable "iam_role" {
  type        = "string"
  default     = ""
  description = "The name of the IAM role to assign to the bootstrap node."
}

variable "ignition" {
  type        = "string"
  description = "The content of the bootstrap ignition file."
}

variable "instance_type" {
  type        = "string"
  default     = "t2.medium"
  description = "The EC2 instance type for the bootstrap node."
}

variable "private_target_group_arns" {
  type        = "list"
  default     = []
  description = "The list of target group ARNs for the private load balancer."
}

variable "private_target_group_arns_length" {
  description = "The length of the 'private_target_group_arns' variable, to work around https://github.com/hashicorp/terraform/issues/12570."
}

variable "public_target_group_arns" {
  type        = "list"
  default     = []
  description = "The list of target group ARNs for the public load balancer."
}

variable "public_target_group_arns_length" {
  description = "The length of the 'public_target_group_arns' variable, to work around https://github.com/hashicorp/terraform/issues/12570."
}

variable "subnet_id" {
  type        = "string"
  description = "The subnet ID for the bootstrap node."
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "AWS tags to be applied to created resources."
}

variable "volume_iops" {
  type        = "string"
  default     = "100"
  description = "The amount of IOPS to provision for the disk."
}

variable "volume_size" {
  type        = "string"
  default     = "30"
  description = "The volume size (in gibibytes) for the bootstrap node's root volume."
}

variable "volume_type" {
  type        = "string"
  default     = "gp2"
  description = "The volume type for the bootstrap node's root volume."
}

variable "vpc_security_group_ids" {
  type        = "list"
  default     = []
  description = "VPC security group IDs for the bootstrap node."
}
