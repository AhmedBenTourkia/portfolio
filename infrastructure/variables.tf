variable "region" {
  description = "AWS region where the S3 bucket lives"
  default     = "eu-west-1"
}

variable "domain_name" {
  description = "Apex domain registered in Route53"
  default     = "ahmedbentourkia.click"
}

variable "bucket_name" {
  description = "S3 bucket name for the portfolio"
  default     = "portofolio-turkia"
}
