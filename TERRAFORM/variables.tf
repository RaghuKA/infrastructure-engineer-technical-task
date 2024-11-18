variable "gcp_svc_key" {}
variable "gcp_project" {}
variable "gcp_region" {}

variable "allowed_ips" {
  description = "List of allowed IPs for VPN access"
  type        = list(string)
  default     = ["10.26.32.12", "19.104.105.29"]
}