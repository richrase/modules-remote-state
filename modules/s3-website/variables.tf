variable "bucket_name" {
    type = string
    description = "pgr301-terraform-rich"
  
}

variable "tags" {
    description = "Tags to apply to resources"
    type = map(string)
    default = {
    }  
}

variable "enable_versioning" {
  type    = bool
  default = false
}