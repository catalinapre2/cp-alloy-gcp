# Input variable definitions

variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique per zone."
  type        = string
  default     = "default_bucket_name"
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}


variable "zones" {
  description = "Instance zones."
  type        = map(list(string))
  default     = {
    "us-east-1" = ["us-east1-b", "us-east1-c", "us-east1-d"]
  }
}

