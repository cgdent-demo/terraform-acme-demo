variable "location" { default = "Australia East" }
variable "tags" {
  type = map(string)
  default = {
    Environment = "dev"
    Owner       = "platform-team"
    CostCenter  = "1234"
  }
}
